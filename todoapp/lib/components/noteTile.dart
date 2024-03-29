import 'package:flutter/material.dart';
import 'package:popover/popover.dart';
import 'package:todoapp/components/noteSettings.dart';

class NoteTile extends StatelessWidget {
  final String text;
  final void Function()? onEditPressed;
  final void Function()? onDeletePressed;

  const NoteTile(
      {super.key,
      required this.text,
      this.onEditPressed,
      this.onDeletePressed});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.only(top: 10, left: 25, right: 20),
        child: ListTile(
            title: Text(text),
            trailing: Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () => showPopover(
                    direction: PopoverDirection.top,
                    backgroundColor: Theme.of(context).colorScheme.background,
                    width: 100,
                    height: 100,
                    context: context,
                    bodyBuilder: (context) => NoteSettings(
                          onDeleteTap: onDeletePressed,
                          onEditTap: onEditPressed,
                        )),
              ),
            )),
      ),
    );
  }
}
