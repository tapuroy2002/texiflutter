import 'package:flutter/material.dart';
import 'package:taxiflutter/components/labels/completed.dart';

class ActionRow extends StatelessWidget {
  final String title;
  final String? description;
  final String? statusLabel;
  final VoidCallback? onTap;

  const ActionRow({
    super.key,
    required this.title,
    this.description,
    this.statusLabel,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Check if we are in the "detailed" state
    final bool isDetailed = description != null || statusLabel != null;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFF1A2332), // Dark navy background
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white.withOpacity(0.1),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            // Left Column: Title and Description
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (description != null) ...[
                    const SizedBox(height: 8),
                    Text(
                      description!,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ],
              ),
            ),

            // Right Side: Status Tag and Arrow
            Row(
              children: [
                if (statusLabel != null)
                  Completed(label: statusLabel!),
                const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}