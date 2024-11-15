# LazyCoders
# Term Project Proposal: Simple Voting System

**Team Name**: Lazy Coders  
**Motto**: "We do it smart, not hard."  
**Team Members**: Hosong Kim, Irdina Jaswan, Lauren Kim, Hyeonji Lee, Yeonju Kim, Jiyun Lee, Chihun Choi

---

## Project Overview
### I. Objective
To develop an interactive online platform where users can log in, vote on live polls, and instantly view results,
all while gaining an understanding of how web servers and browsers interact via HTTP communication and I/O multiplexing.

### II. Overview
The Simple Voting System will serve as a practical application built on top of an HTTP/1.1-subset web server.
This system will allow users to participate in polls, demonstrating real-time data exchange and client-server
communication. By utilizing both HTTP-based requests and WebSocket connections, the project aims to
create a responsive user experience.
This project will focus on:
1. Implementing a web server that adheres to a subset of HTTP/1.1, facilitating GET requests for
retrieving poll data.
2. Managing client interactions using I/O multiplexing to handle multiple users simultaneously without
multi-threading or multi-processing.
3. Providing real-time updates of voting results using WebSocket connections, allowing for a seamless
experience for users participating in live polls.
### III. Components
The project consists of two main components: the implementation of the web server and the voting system.
#### A. Web Server Implementation
-  The server will handle HTTP GET requests for retrieving polling data and submitting votes.
- It will support persistent connections to manage user sessions effectively.
- The implementation will follow the established guidelines of the HTTP/1.1 protocol, responding with appropriate status codes (200, 400, 404).
#### B. Simple Voting System
- Users will be able to create an account, log in, and vote on active polls.
- The voting data will be stored on the server and retrieved dynamically when needed.
- A real-time update feature will show current poll results using WebSocket connections, enhancing
user engagement.
### IV. Conclusion
By implementing the Simple Voting System on top of the HTTP/1.1 subset web server, this project aims to
deepen understanding of web communication principles and provide a hands-on experience in server-client
interactions, enhancing both the theoretical knowledge and practical skills required in modern web
development.
