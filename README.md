# LazyCoders
# Term Project Proposal: Simple HTTP Web Server

**Team Name**: Lazy Coders  
**Motto**: "We do it smart, not hard."  
**Team Members**: Hosong Kim, Irdina Jaswan, Lauren Kim, Hyeonji Lee, Yeonju Kim, Jiyun Lee, Chihun Choi

---



# Overview
This project implements a lightweight HTTP/1.1 web server in C, capable of serving static files from a specified directory.
The server uses I/O multiplexing with the select() system call to handle multiple client connections simultaneously. It's a foundational project for understanding how web servers work, fo
cusing on key concepts like socket programming, HTTP request handling, and file I/O operations.

# Features
HTTP/1.1 Support:
Serves static files with proper Content-Type and Content-Length headers.
Handles common file types such as .html, .css, .js, .png, .jpg, and more.
Responds with 404 Not Found for unavailable files.
# I/O Multiplexing:
Supports multiple concurrent clients using the select() system call.
# Dynamic File Handling:
Dynamically reads and serves files of any size from the specified directory.
Uses MIME type detection based on file extensions.
# Basic Security:
Prevents unauthorized access via basic path traversal checks.
# Error Handling:
Provides meaningful error messages for socket operations and client handling.
Responds to invalid requests with appropriate HTTP status codes.

# Key Components
Socket Programming:
Establishes a TCP connection with clients using the socket(), bind(), and listen() system calls.
Accepts client connections with accept().
# HTTP Request Handling:
Parses HTTP requests to identify methods and requested paths.
Responds with appropriate headers and file content.
# I/O Multiplexing:
Utilizes select() to monitor multiple client sockets and handle requests efficiently.
# Dynamic Content Serving:
Reads files in binary mode and sends them as part of the HTTP response.
