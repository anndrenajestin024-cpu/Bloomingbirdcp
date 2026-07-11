class WhyPoint {
  final String title;
  final String desc;
  const WhyPoint(this.title, this.desc);
}

class ServiceItem {
  final String name;
  const ServiceItem(this.name);
}

class TeamMember {
  final String image;
  final String name;
  final String role;
  final String bio;
  const TeamMember(this.image, this.name, this.role, this.bio);
}

class Partner {
  final String image;
  final String name;
  const Partner(this.image, this.name);
}

const whyPoints = [
  WhyPoint('0% Income Tax',
      'Tax-efficient ownership with no personal income tax on property investments anywhere in Dubai.'),
  WhyPoint('200+ Nationalities',
      'A truly global city with world-class infrastructure, a diverse community, and unmatched connectivity.'),
  WhyPoint('High Rental Demand',
      'Strong rental yields supported by long-term capital appreciation and consistent population growth.'),
  WhyPoint('Golden Visa',
      'Long-term UAE residency available through qualifying property investment, offering stability and freedom.'),
  WhyPoint('Political Stability',
      "Government-backed economic growth within one of the world's most secure, business-friendly environments."),
  WhyPoint('Global Connectivity',
      "A gateway linking East and West, served by one of the world's busiest international airports."),
];

const services = [
  ServiceItem('Investment Advisory'),
  ServiceItem('Off-Plan Opportunities'),
  ServiceItem('Luxury Residential'),
  ServiceItem('Portfolio Diversification'),
  ServiceItem('Property Management'),
  ServiceItem('Exit Strategy'),
  ServiceItem('Rental Yield Optimisation'),
  ServiceItem('Developer Access'),
];

const team = [
  TeamMember(
    'assets/images/img_21.jpg',
    'Ankith Goyal',
    'Founder & CEO',
    'The visionary behind Bloomingbird Real Estate, Ankith leads with a strong focus on trust, transparency, and long-term client relationships.',
  ),
  TeamMember(
    'assets/images/img_22.jpg',
    'Harssh Guptaa',
    'Associate Director',
    'Supports business development and client relations with a practical, results-driven approach ensuring smooth operations at every stage.',
  ),
  TeamMember(
    'assets/images/img_23.jpg',
    'Soumya Suzzane',
    'Creative & Marketing Head',
    "Leads Bloomingbird's creative direction and marketing strategy, shaping the brand's identity, communication, and digital presence.",
  ),
  TeamMember(
    'assets/images/img_24.jpg',
    'Murti Purohit',
    'Co-Founder',
    'Contributing to the foundation and growth of Bloomingbird through strategic support, collaboration, and shared vision.',
  ),
  TeamMember(
    'assets/images/img_25.jpg',
    'Sudha Gupta',
    'Director',
    'Supports the company with her understanding of client relations and operational coordination, contributing to overall growth and stability.',
  ),
];

const partners = [
  Partner('assets/images/img_10.png', 'Binghatti'),
  Partner('assets/images/img_11.png', 'Sobha Realty'),
  Partner('assets/images/img_12.png', 'Imtiaz Developments'),
  Partner('assets/images/img_13.png', 'Emaar'),
  Partner('assets/images/img_14.png', 'Zoya'),
  Partner('assets/images/img_15.png', 'HMB Homes'),
  Partner('assets/images/img_16.png', 'Mr. Eight'),
  Partner('assets/images/img_17.png', 'Beyond'),
];

const processSteps = [
  ['1', 'Discover', 'Understand your goals and timeline'],
  ['2', 'Analyse', 'Deep market intelligence and research'],
  ['3', 'Curate', 'Handpicked opportunities aligned to you'],
  ['4', 'Acquire', 'Confident negotiations and execution'],
  ['5', 'Manage', 'Long-term asset support and oversight'],
  ['6', 'Grow', 'Building lasting, generational wealth'],
];
