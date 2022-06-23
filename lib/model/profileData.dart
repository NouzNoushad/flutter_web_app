import 'package:flutter/material.dart';

class ProfileData {
  final String history;
  final IconData icon;
  final int results;

  const ProfileData(
      {required this.history, required this.icon, required this.results});
}

final DataList = [
  const ProfileData(
    history: "Notifications", 
    icon: Icons.notifications_outlined, 
    results: 1604,
  ),
  const ProfileData(
    history: "Comments", 
    icon: Icons.message_outlined,
    results: 604,
  ),
  const ProfileData(
    history: "View", 
    icon: Icons.remove_red_eye_outlined,
    results: 401216,
  ),
  const ProfileData(
    history: "Notifications", 
    icon: Icons.person, 
    results: 3214,
  ),
];
