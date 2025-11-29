// Generated to match cairo landing page UI
// Adjust asset paths, colors, and text strings to match your branding

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ibrahim Al-Tuwaijri',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF1A1F3A),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            const HeaderSection(),
            // Services Section
            const SizedBox(height: 60),
            const ServicesSection(),
            // Clients Section
            const SizedBox(height: 60),
            const ClientsSection(),
            // Info Section (Vision, Mission, Values)
            const SizedBox(height: 60),
            const InfoCardsSection(),
            // Work Area Section
            const SizedBox(height: 60),
            const WorkAreaSection(),
            // Footer
            const SizedBox(height: 80),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width <= 600;
    return Container(
      color: const Color(0xFFF5F5F5),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 48,
        vertical: isMobile ? 32 : 48,
      ),
      child: Column(
        children: [
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1F3A),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.bookmark,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'إبراهيم التويجري',
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.cairo(
                        fontSize: isMobile ? 24 : 36,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1A1F3A),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'الفائرتس اللامحدودة',
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.cairo(
                        fontSize: isMobile ? 16 : 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            'شركة متخصصة في تقديم حلول متطورة ومبتكرة لشركات ومؤسسات القطاع الخاص والعام. نتميز بخبرة عميقة وفريق محترف يسعى لتحقيق أعلى معايير الجودة والتميز في جميع مشاريعنا.',
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            style: GoogleFonts.cairo(
              fontSize: isMobile ? 14 : 16,
              height: 1.6,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width <= 600;
    final services = [
      ServiceCard(
        icon: Icons.location_city,
        title: 'الحقول النفطية والتشييد الرقمي',
        description:
            'حلول متقدمة وآمنة لقطاع الطاقة والبناء باستخدام أحدث التقنيات الرقمية والبرمجيات.',
      ),
      ServiceCard(
        icon: Icons.business_center,
        title: 'إدارة المشاريع والتدريب',
        description:
            'تحقيق وتطوير كفاءات المشاريع والمؤسسات مع فريق تدريبي متخصص على أعلى مستويات.',
      ),
      ServiceCard(
        icon: Icons.computer,
        title: 'البرامجيات الإلكترونية والتقنية',
        description:
            'حلول برمجية متطورة وأنظمة معلومات شاملة لجميع احتياجات العمل والتطبيقات المختلفة.',
      ),
    ];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 48),
      child: Column(
        children: [
          Text(
            'قطاعاتنا',
            textDirection: TextDirection.rtl,
            style: GoogleFonts.cairo(
              fontSize: isMobile ? 28 : 36,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF1A1F3A),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'منطقة متخصصة من قطاعات متنوعة يسهل الوصول إليها من شركات مختلفة',
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: GoogleFonts.cairo(
              fontSize: isMobile ? 14 : 16,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 40),
          LayoutBuilder(
            builder: (context, constraints) {
              return Wrap(
                spacing: 24,
                runSpacing: 24,
                children: services
                    .map(
                      (service) => SizedBox(
                        width: isMobile
                            ? constraints.maxWidth
                            : (constraints.maxWidth - 48) / 3,
                        child: service,
                      ),
                    )
                    .toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String description;

  const ServiceCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: _isHovered ? const Color(0xFF1A1F3A) : Colors.white,
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Icon(
              widget.icon,
              size: 48,
              color: _isHovered ? Colors.white : const Color(0xFF1A1F3A),
            ),
            const SizedBox(height: 16),
            Text(
              widget.title,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              style: GoogleFonts.cairo(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: _isHovered ? Colors.white : const Color(0xFF1A1F3A),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              widget.description,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              style: GoogleFonts.cairo(
                fontSize: 14,
                height: 1.5,
                color: _isHovered ? Colors.white70 : Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClientsSection extends StatelessWidget {
  const ClientsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width <= 600;
    final clients = [
      'Green Experts',
      'VZV Group',
      'UNIQUE GIFT',
      'حوسبة السعودية',
      'ESCORE',
    ];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 48),
      child: Column(
        children: [
          Text(
            'شركائنا',
            textDirection: TextDirection.rtl,
            style: GoogleFonts.cairo(
              fontSize: isMobile ? 24 : 28,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF1A1F3A),
            ),
          ),
          const SizedBox(height: 32),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 32,
            runSpacing: 24,
            children: clients
                .map(
                  (client) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      client,
                      style: GoogleFonts.cairo(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class InfoCardsSection extends StatelessWidget {
  const InfoCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width <= 600;
    final infos = [
      InfoCard(
        icon: Icons.visibility,
        title: 'رؤيتنا',
        description:
            'أن تكون الشركة الرائدة في تقديم الحلول المتقدمة والخدمات المتميزة في جميع القطاعات الحكومية والخاصة.',
        color: Colors.green,
      ),
      InfoCard(
        icon: Icons.mail,
        title: 'رسالتنا',
        description:
            'امكان قيادة الشركات الحديثة من خلال الحلول التكنولوجية والتدريب والتطوير مع معايير جودة عالية.',
        color: Colors.orange,
      ),
      InfoCard(
        icon: Icons.bookmark,
        title: 'قيمنا',
        description:
            'الجودة والابتكار والمسؤولية والشفافية والعمل بروح الفريق والالتزام بمعايير 2030 والاستدامة والابداع.',
        color: Colors.red,
      ),
    ];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 48),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Wrap(
            spacing: 24,
            runSpacing: 24,
            children: infos
                .map(
                  (info) => SizedBox(
                    width: isMobile
                        ? constraints.maxWidth
                        : (constraints.maxWidth - 48) / 3,
                    child: info,
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Color color;

  const InfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                textDirection: TextDirection.rtl,
                style: GoogleFonts.cairo(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1A1F3A),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Icon(icon, color: Colors.white, size: 24),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            description,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            style: GoogleFonts.cairo(
              fontSize: 14,
              height: 1.6,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }
}

class WorkAreaSection extends StatelessWidget {
  const WorkAreaSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width <= 600;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 48),
      child: Column(
        children: [
          Text(
            'نطاق عملنا',
            textDirection: TextDirection.rtl,
            style: GoogleFonts.cairo(
              fontSize: isMobile ? 28 : 36,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF1A1F3A),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'نعمل في مختلف المناطق الجغرافية والقطاعات المتنوعة',
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: GoogleFonts.cairo(fontSize: 14, color: Colors.grey[600]),
          ),
          const SizedBox(height: 40),
          LayoutBuilder(
            builder: (context, constraints) {
              return Wrap(
                spacing: 24,
                runSpacing: 24,
                children: [
                  SizedBox(
                    width: isMobile
                        ? constraints.maxWidth
                        : (constraints.maxWidth - 24) / 2,
                    height: 300,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage('assets/images/riyadh.jpg'),
                          fit: BoxFit.cover,
                          onError: (c, s) =>
                              const AssetImage('assets/images/placeholder.jpg'),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'الرياض',
                          style: GoogleFonts.cairo(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: isMobile
                        ? constraints.maxWidth
                        : (constraints.maxWidth - 24) / 2,
                    height: 300,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage('assets/images/jeddah.jpg'),
                          fit: BoxFit.cover,
                          onError: (c, s) =>
                              AssetImage('assets/images/placeholder.jpg'),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'جدة',
                          style: GoogleFonts.cairo(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
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

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width <= 600;

    return Container(
      width: double.infinity,
      color: const Color(0xFF1A1F3A),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 48,
        vertical: 32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.bookmark,
              color: Color(0xFF1A1F3A),
              size: 36,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'شركة متخصصة في تقديم حلول متطورة ومبتكرة',
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            style: GoogleFonts.cairo(
              fontSize: 14,
              height: 1.6,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'جميع الحقوق محفوظة © 2024',
            textDirection: TextDirection.rtl,
            style: GoogleFonts.cairo(fontSize: 12, color: Colors.white54),
          ),
        ],
      ),
    );
  }
}
