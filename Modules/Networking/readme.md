# Networking Overview

## Definition
Networking is the process of connecting devices to share information efficiently.

## Importance in Modern Infrastructure
- **Foundation**: Enables communication between devices.
- **Resource Sharing**: Facilitates sharing of files.
- **Application Support**: Ensures data transfer and connectivity.
- **Internet Functionality**: Provides access to global resources.

---

## Network Types
### LAN (Local Area Network)
- Covers a small area (e.g., home, office).
- Connects devices to share resources.

### WAN (Wide Area Network)
- Covers a large area (e.g., city, region).
- Connects multiple LANs.
- Supports internet connectivity.

---

## Networking Devices
### Switches
- Connect devices within the same network.
- Manage data flow within LAN.

### Routers
- Direct traffic between networks.
- Connect different networks together.

### Firewalls
- Protect networks from unauthorized access.
- Monitor and control incoming/outgoing network traffic.

---

## Network Identifiers
### IP Address
- Unique identifier for devices on a network.
- Types:
  - **IPv4**: 32-bit address.
  - **IPv6**: 128-bit address.

### MAC Address
- Essential for network communication.
- Media Access Control (MAC) interface.
- 48-bit unique identifier assigned to network interfaces.

---

## Ports and Protocols
- **Ports**: Logical endpoints for communication.
- **Protocols**: Rules governing data transmissions (e.g., HTTP).
- **Importance**: Facilitate communication between devices.

### TCP (Transmission Control Protocol)
- Reliable but slower.
- Requires a "handshake" between devices.
- Ensures ordered, error-checked, and bidirectional communication.

### UDP (User Datagram Protocol)
- Fast but less reliable.
- Connectionless communication.
- Suitable for real-time applications (e.g., streaming, gaming, DNS, VPN).

---

## OSI 7-Layer Model
Provides a standardized framework for network communication.

| Layer | Name               | Function |
|-------|--------------------|------------------------------------------------|
| L7    | Application        | End-user layer (e.g., HTTP, FTP, IRC). |
| L6    | Presentation       | Translates, encrypts, formats data (e.g., SSL, SSH). |
| L5    | Session            | Manages sessions between applications. |
| L4    | Transport          | Reliable data transfer (e.g., TCP, UDP). |
| L3    | Network            | Packet forwarding and routing (e.g., IP, IPSEC). |
| L2    | Data Link          | Node-to-node data transfer, MAC addresses. |
| L1    | Physical           | Transmits raw bitstream over physical media. |

### OSI Layers: Sender & Receiver POV
**Sender:**
1. **Application**: Sends HTTP request.
2. **Presentation**: Serializes data.
3. **Session**: Establishes a TCP connection.
4. **Transport**: Sends SYN request.
5. **Network**: Adds source/destination IP.
6. **Data Link**: Frames data, adds MAC addresses.
7. **Physical**: Converts data into signals.

**Receiver:**
1. **Physical**: Receives signals.
2. **Data Link**: Assembles frames.
3. **Network**: Processes IP packets.
4. **Transport**: Assembles TCP segments.
5. **Session**: Establishes connection.
6. **Presentation**: Decrypts data.
7. **Application**: Processes HTTP request.

---

## DNS (Domain Name System)
- **Definition**: Translates domain names into IP addresses.
- **Importance**: Simplifies internet navigation.

### DNS Components
- **Authoritative DNS**: Holds actual DNS records.
- **Recursive DNS**: Fetches records from other servers.

### Zone Files
- Store domain-related information in a structured format.

### DNS Records
| Record | Function |
|--------|--------------------------------|
| A      | Maps domain to IPv4 address. |
| AAAA   | Maps domain to IPv6 address. |
| CNAME  | Maps multiple domains to one IP. |
| MX     | Specifies mail server. |
| TXT    | Stores text info for a domain. |

### DNS Resolution Steps
1. User enters domain name.
2. Local DNS cache checked.
3. Query sent to recursive DNS resolver.
4. Resolver queries root name server.
5. Root server directs query to TLD server.
6. TLD server directs to authoritative name server.
7. Authoritative server returns IP.
8. Browser connects to the website.

### DNS Debugging Tools
- **nslookup**: Basic DNS query tool.
- **dig**: Advanced DNS query tool.

---

## Routing
- **Definition**: Determines paths for data transmission.
- **Importance**: Ensures efficient data delivery.

### Static vs. Dynamic Routing
- **Static Routing**:
  - Manually configured.
  - Fixed paths.
  - Less adaptable.
- **Dynamic Routing**:
  - Automatic path selection.
  - Uses routing protocols (e.g., OSPF).
  - More scalable and adaptable.

This project is licensed under the MIT License.
