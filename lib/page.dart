import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                color: Color(0xFFE8F5E9),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.eco, color: Color(0xFF2E7D32), size: 20),
            ),
            const SizedBox(width: 8),
            const Text(
              "GreenPoint",
              style: TextStyle(
                color: Color(0xFF2E7D32),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.black87,
                  size: 26,
                ),
                onPressed: () {},
              ),
              Positioned(
                right: 12,
                top: 12,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(color: Colors.grey.shade100, height: 1),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Profile Card
              _buildProfileCard(),
              const SizedBox(height: 16),

              // 2. Mascot Speech Bubble Banner
              const EcoMascotBanner(),
              const SizedBox(height: 16),

              // 3. Streak Card
              _buildStreakCard(),
              const SizedBox(height: 16),

              // 4. Achievements Section
              _buildAchievementsCard(),
              const SizedBox(height: 16),

              // 5. Transaction History Section
              _buildTransactionHistoryCard(),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3, // Profile selected
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF2E7D32),
        unselectedItemColor: Colors.grey.shade500,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 11,
        ),
        unselectedLabelStyle: const TextStyle(fontSize: 11),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            activeIcon: Icon(Icons.storefront),
            label: 'Partner Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner_outlined),
            activeIcon: Icon(Icons.qr_code_scanner),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildProfileCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(5, 0, 0, 0),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Avatar with Camera Button
          Stack(
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 3),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(15, 0, 0, 0),
                      blurRadius: 8,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  backgroundColor: Color(0xFFC8E6C9),
                  backgroundImage: NetworkImage(
                    'https://api.dicebear.com/7.x/avataaars/png?seed=GreenPointBoy&backgroundColor=c8e6c9',
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 28,
                  width: 28,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    color: Color(0xFF1E293B),
                    size: 14,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 16),
          // Profile Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Text(
                      "Mr. G",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0F172A),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE8F5E9),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFFC8E6C9)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.eco, size: 11, color: Colors.green),
                          SizedBox(width: 3),
                          Text(
                            "Level 5",
                            style: TextStyle(
                              color: Color(0xFF2E7D32),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                const Text(
                  "รักษ์โลกในแบบของเรา 🍃",
                  style: TextStyle(fontSize: 12, color: Color(0xFF64748B)),
                ),
                const SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    const Text(
                      "350 XP ",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "/ 500 XP",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: const LinearProgressIndicator(
                    value: 350 / 500,
                    minHeight: 6,
                    backgroundColor: Color(0xFFE2E8F0),
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "อีก 150 XP เพื่อเลื่อนเป็น Level 6",
                  style: TextStyle(fontSize: 10, color: Colors.grey.shade500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStreakCard() {
    final days = ['จ.', 'อ.', 'พ.', 'พฤ.', 'ศ.', 'ส.', 'อา.'];
    final checked = [true, true, true, true, true, true, false];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          // Left Side: Streak Fire Indicator
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Color(0xFFE8F9EE),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.whatshot_rounded,
                        color: Color(0xFF2E7D32),
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "ใช้แอปต่อเนื่อง",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "12 ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2E7D32),
                                ),
                              ),
                              TextSpan(
                                text: "วัน",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  "เก่งมาก! รักษ์โลกอย่างต่อเนื่อง",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
              ],
            ),
          ),
          // Vertical Line Divider
          Container(
            height: 50,
            width: 1,
            color: Colors.grey.shade100,
            margin: const EdgeInsets.symmetric(horizontal: 10),
          ),
          // Right Side: Connecting Days Tracker
          Expanded(
            flex: 6,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Connecting line behind circles
                Positioned(
                  left: 12,
                  right: 12,
                  top: 11,
                  child: Container(height: 2, color: Colors.grey.shade200),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(7, (index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: checked[index]
                                ? const Color(0xFF2E7D32)
                                : const Color(0xFFECEFF1),
                          ),
                          child: checked[index]
                              ? const Icon(
                                  Icons.check_rounded,
                                  color: Colors.white,
                                  size: 14,
                                )
                              : null,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          days[index],
                          style: TextStyle(
                            fontSize: 10,
                            color: checked[index]
                                ? const Color(0xFF2E7D32)
                                : Colors.grey.shade500,
                            fontWeight: checked[index]
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAchievementsCard() {
    final badges = [
      {
        'label': 'Eco Starter',
        'icon': Icons.eco_outlined,
        'color': const Color(0xFFD84315),
        'bgColor': const Color(0xFFFBE9E7),
        'borderColor': const Color(0xFFFFCCBC),
        'locked': false,
      },
      {
        'label': 'Green Shopper',
        'icon': Icons.local_mall_outlined,
        'color': const Color(0xFF2E7D32),
        'bgColor': const Color(0xFFE8F5E9),
        'borderColor': const Color(0xFFC8E6C9),
        'locked': false,
      },
      {
        'label': 'Eco Explorer',
        'icon': Icons.pin_drop_outlined,
        'color': const Color(0xFF37474F),
        'bgColor': const Color(0xFFECEFF1),
        'borderColor': const Color(0xFFCFD8DC),
        'locked': false,
      },
      {
        'label': 'No Plastic',
        'icon': Icons.card_giftcard_outlined,
        'color': const Color(0xFFF57F17),
        'bgColor': const Color(0xFFFFF9C4),
        'borderColor': const Color(0xFFFFF59D),
        'locked': false,
      },
      {
        'label': 'Eco Hero',
        'icon': Icons.lock_outline,
        'color': const Color(0xFF90A4AE),
        'bgColor': const Color(0xFFF5F5F5),
        'borderColor': const Color(0xFFE0E0E0),
        'locked': true,
      },
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Achievements",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: const [
                    Text(
                      "ดูทั้งหมด",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2E7D32),
                      ),
                    ),
                    SizedBox(width: 2),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 10,
                      color: Color(0xFF2E7D32),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: badges.map((badge) {
              final isLocked = badge['locked'] as bool;
              return Expanded(
                child: Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: badge['bgColor'] as Color,
                        border: Border.all(
                          color: badge['borderColor'] as Color,
                          width: 2,
                        ),
                      ),
                      child: Icon(
                        badge['icon'] as IconData,
                        color: badge['color'] as Color,
                        size: 22,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      badge['label'] as String,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: isLocked ? Colors.grey : Colors.black87,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionHistoryCard() {
    final transactions = [
      {
        'title': 'สแกน QR code ที่ร้านกระเจี๊ยบ',
        'subtitle': '02/09/2568  •  14:32  •  Cha-ji Coffee',
        'points': '+10 XP',
        'isPositive': true,
        'icon': Icons.qr_code_scanner_rounded,
        'iconColor': const Color(0xFF2E7D32),
        'iconBgColor': const Color(0xFFE8F9EE),
      },
      {
        'title': 'สแกน QR code ที่ร้านลูกชิ้นอ้วน',
        'subtitle': '01/09/2568  •  10:18  •  ร้านลูกชิ้นอ้วน',
        'points': '+5 XP',
        'isPositive': true,
        'icon': Icons.qr_code_scanner_rounded,
        'iconColor': const Color(0xFF2E7D32),
        'iconBgColor': const Color(0xFFE8F9EE),
      },
      {
        'title': 'แลกกระบอกน้ำตราหมี',
        'subtitle': '03/08/2568  •  17:45  •  GreenPoint Shop',
        'points': '-50 XP',
        'isPositive': false,
        'icon': Icons.card_giftcard_rounded,
        'iconColor': Colors.red,
        'iconBgColor': const Color(0xFFFFEBEE),
      },
      {
        'title': 'โบนัสกิจกรรม แต้ม x2',
        'subtitle': '28/07/2568  •  09:20  •  งาน Green Life',
        'points': '+20 XP',
        'isPositive': true,
        'icon': Icons.star_border_rounded,
        'iconColor': const Color(0xFF2E7D32),
        'iconBgColor': const Color(0xFFE8F9EE),
      },
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "ประวัติการทำรายการ",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: const [
                    Text(
                      "ดูทั้งหมด",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2E7D32),
                      ),
                    ),
                    SizedBox(width: 2),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 10,
                      color: Color(0xFF2E7D32),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: transactions.length,
            separatorBuilder: (context, index) =>
                Divider(color: Colors.grey.shade100, height: 20),
            itemBuilder: (context, index) {
              final tx = transactions[index];
              final isPositive = tx['isPositive'] as bool;
              return Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: tx['iconBgColor'] as Color,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      tx['icon'] as IconData,
                      color: tx['iconColor'] as Color,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tx['title'] as String,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          tx['subtitle'] as String,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Row(
                    children: [
                      Text(
                        tx['points'] as String,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: isPositive
                              ? const Color(0xFF2E7D32)
                              : Colors.red,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 10,
                        color: Colors.grey.shade400,
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class EcoMascotBanner extends StatelessWidget {
  const EcoMascotBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 235, 249, 238),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Background Leaf Watermark
          Positioned(
            right: -15,
            bottom: -15,
            child: Transform.rotate(
              angle: -0.2,
              child: const Icon(
                Icons.eco,
                size: 90,
                color: Color.fromARGB(31, 76, 175, 80),
              ),
            ),
          ),
          // Content Row
          Row(
            children: [
              // Cute Mascot
              const MascotWidget(),
              const SizedBox(width: 12),
              // Speech Bubble
              Expanded(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(8, 0, 0, 0),
                            blurRadius: 6,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Text(
                        "ยอดเยี่ยมมาก! คุณกำลังช่วยโลก\nไปพร้อมกับสร้างสิ่งดีๆ ให้ตัวเอง",
                        style: TextStyle(
                          color: Color.fromARGB(255, 12, 69, 14),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          height: 1.4,
                        ),
                      ),
                    ),
                    // Speech bubble pointer (triangle)
                    Positioned(
                      left: -6,
                      top: 22,
                      child: Transform.rotate(
                        angle: 45 * 3.1415927 / 180,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(2),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MascotWidget extends StatelessWidget {
  const MascotWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      height: 85,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          // Mascot Body
          Positioned(
            bottom: 0,
            child: Container(
              width: 58,
              height: 64,
              decoration: BoxDecoration(
                color: const Color(0xFFE8FAF0),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0xFFA3E2B9), width: 1.5),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Eyes
                  Positioned(
                    top: 18,
                    left: 14,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                        color: Color(0xFF1E293B),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 18,
                    right: 14,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                        color: Color(0xFF1E293B),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  // Cheeks (blush)
                  Positioned(
                    top: 22,
                    left: 10,
                    child: Container(
                      width: 6,
                      height: 3,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(38, 244, 67, 54),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 22,
                    right: 10,
                    child: Container(
                      width: 6,
                      height: 3,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(38, 244, 67, 54),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  // Smile
                  Positioned(
                    top: 23,
                    child: CustomPaint(
                      size: const Size(10, 5),
                      painter: SmilePainter(),
                    ),
                  ),
                  // Recycling symbol on chest
                  Positioned(
                    bottom: 8,
                    child: Icon(
                      Icons.recycling_rounded,
                      size: 24,
                      color: Colors.green.shade600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Left Leaf (on head)
          Positioned(
            top: 4,
            left: 20,
            child: Transform.rotate(
              angle: -0.4,
              child: const Icon(Icons.eco, size: 16, color: Colors.green),
            ),
          ),
          // Right Leaf (on head)
          Positioned(
            top: 2,
            right: 22,
            child: Transform.rotate(
              angle: 0.3,
              child: const Icon(Icons.eco, size: 13, color: Colors.green),
            ),
          ),
          // Left Hand
          Positioned(
            left: 0,
            bottom: 25,
            child: Container(
              width: 10,
              height: 12,
              decoration: BoxDecoration(
                color: const Color(0xFFE8FAF0),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: const Color(0xFFA3E2B9), width: 1.5),
              ),
            ),
          ),
          // Right Hand
          Positioned(
            right: 0,
            bottom: 25,
            child: Container(
              width: 10,
              height: 12,
              decoration: BoxDecoration(
                color: const Color(0xFFE8FAF0),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: const Color(0xFFA3E2B9), width: 1.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SmilePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF1E293B)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5
      ..strokeCap = StrokeCap.round;

    final path = Path()
      ..moveTo(0, 0)
      ..quadraticBezierTo(size.width / 2, size.height * 1.5, size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
