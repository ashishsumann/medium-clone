import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:medium_clone/app/uikit/uikit.dart';
import 'package:medium_clone/app/uikit/widgets/user_avatar.dart';

/// View to display user name & community name (optional) with appropriate avatar.
class UserAndCommunityView extends StatelessWidget {
  final User user;
  final Community? community;

  const UserAndCommunityView({Key? key, required this.user, this.community})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        UserAvatar(
          community?.imageUrl ?? user.imageUrl,
          radius: context.isMobile ? 12 : 8,
        ),
        const SizedBox(width: 8),
        Text(
          user.name,
          style: Styles.caption?.copyWith(fontWeight: FontWeight.bold),
        ),
        if (community != null) Text(" in ", style: Styles.caption),
        if (community != null)
          Text(
            community?.name ?? "",
            style: Styles.caption?.copyWith(fontWeight: FontWeight.bold),
          )
      ],
    );
  }
}
