import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:style_stitch/features/sp_icon/sp_icon.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem(
      {super.key,
      required this.title,
      this.subtitle,
      required this.assetName,
      required this.isLast,
      this.onTap});
  final String title;
  final String? subtitle;
  final String assetName;
  final bool isLast;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 60.0,
            margin: const EdgeInsets.only(bottom: 0),
            child: ListTile(
              leading: SPIcon(
                assetname: assetName,
              ),
              title: Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              subtitle: subtitle != null
                  ? Text(subtitle!,
                      style: Theme.of(context).textTheme.bodySmall)
                  : null,
              trailing: InkWell(
                onTap: () {},
                child: const Icon(
                  CupertinoIcons.chevron_forward,
                  size: 16.0,
                ),
              ),
            ),
          ),
          isLast
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Container(),
                )
              : const Divider()
        ],
      ),
    );
  }
}
