import 'package:flutter/material.dart';

class Snackbar {
  static void show(BuildContext context, bool isSuccess, String message) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final overlay = Overlay.of(context);
      final overlayEntry = OverlayEntry(
        builder: (context) => SafeArea( // ✅ Prevents layout issues
          child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, right: 20),
              child: Material(
                color: Colors.transparent,
                child: Container(
                  width: 280,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(color: Colors.black38, blurRadius: 5, offset: Offset(2, 2)),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isSuccess ? Colors.green : Colors.red,
                        ),
                        child: Icon(
                          isSuccess ? Icons.check : Icons.clear,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 12),
                      // ✅ Message Text
                      Expanded(
                        child: Text(
                          message,
                          style: TextStyle(fontSize: 16, color: Colors.white),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );

      overlay.insert(overlayEntry);

      // Remove the snackbar after 2.5 seconds
      Future.delayed(Duration(seconds: 2), () {
        overlayEntry.remove();
      });
    });
  }
}
