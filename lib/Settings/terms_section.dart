import 'package:flutter/material.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Terms of Service',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Terms of Service',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 16.0),
              Text(
                '1. Introduction',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Welcome to our Terms of Service. These terms govern your use of our app and services. By accessing or using our app, you agree to be bound by these terms.',
              ),
              const SizedBox(height: 16.0),
              Text(
                '2. User Responsibilities',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Users are responsible for maintaining the accuracy of their information. You must not engage in any unlawful activities or misuse the app in any way.',
              ),
              const SizedBox(height: 16.0),
              Text(
                '3. Account Management',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'You are responsible for maintaining the confidentiality of your account credentials. We may suspend or terminate your account for violations of these terms.',
              ),
              const SizedBox(height: 16.0),
              Text(
                '4. Content Ownership',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'All content provided on the app is owned by us or our licensors. You retain ownership of content you create but grant us a license to use it as described in the Privacy Policy.',
              ),
              const SizedBox(height: 16.0),
              Text(
                '5. Service Availability',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'We strive to ensure the app is available at all times but cannot guarantee uninterrupted access. We are not liable for any disruptions in service.',
              ),
              const SizedBox(height: 16.0),
              Text(
                '6. Privacy and Data Protection',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Refer to our Privacy Policy for details on how we collect, use, and protect your personal information.',
              ),
              const SizedBox(height: 16.0),
              Text(
                '7. Payment Terms',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Payments for any premium services are processed through a secure gateway. Refunds and cancellations are handled as per our refund policy.',
              ),
              const SizedBox(height: 16.0),
              Text(
                '8. Dispute Resolution',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Any disputes arising from these terms or your use of the app will be resolved in accordance with the laws of [Your Jurisdiction].',
              ),
              const SizedBox(height: 16.0),
              Text(
                '9. Modifications to Terms',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'We may update these terms from time to time. Changes will be communicated through the app or via email. The effective date of the current terms is [Effective Date].',
              ),
              const SizedBox(height: 16.0),
              Text(
                '10. Contact Information',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'For questions or concerns about these terms, please contact us at support@example.com.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
