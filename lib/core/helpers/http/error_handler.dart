

import '../../models/status_response.dart';

class HttpErrorHandler {
  HttpErrorHandler._();
  static StatusResponse statusResponse = StatusResponse();
  static StatusResponse timeOutResponse =
      StatusResponse(success: false, message: 'Connection timed out');
  static StatusResponse formatResponse =
      StatusResponse(success: false, message: 'Invalid response format');

  static String statusMessage(int statusCode) {
    switch (statusCode) {
      case 100:
      case 101:
      case 102:
      case 103:
        statusResponse =
            StatusResponse(message: 'Still working on it...', success: false);
        break;
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 226:
        statusResponse = StatusResponse(message: 'Successful', success: true);
        break;
      case 300:
      case 301:
      case 302:
      case 303:
      case 304:
      case 305:
      case 306:
      case 307:
      case 308:
        statusResponse =
            StatusResponse(message: 'Redirecting...', success: false);
        break;
      case 400:
        statusResponse = StatusResponse(
            message:
                'Bad Request: Please check that the information being sent is appropriate.',
            success: false);
        break;
      case 401:
      case 407:
        statusResponse = StatusResponse(
            message:
                'Unauthorised access: Make sure you are authorised to perform this action.',
            success: false);
        break;
      case 402:
        statusResponse = StatusResponse(
            message: 'Payment is required to continue this action.',
            success: false);
        break;
      case 403:
        statusResponse = StatusResponse(
            message: 'Forbidden: Access is restricted for the action.',
            success: false);
        break;
      case 404:
        statusResponse = StatusResponse(
            message: 'What was requested could not be found.', success: false);
        break;
      case 405:
        statusResponse = StatusResponse(
            message: 'This action has either been disabled or cannot be used.',
            success: false);
        break;
      case 406:
        statusResponse = StatusResponse(
            message:
                'Not Acceptable: This request does not follow the necessary criteria specified.',
            success: false);
        break;
      case 408:
      case 504:
        statusResponse = StatusResponse(
            message: 'Request timed out before it could be completed.',
            success: false);
        break;
      case 409:
        statusResponse = StatusResponse(
            message:
                'Conflict: Please resolve the pending conflict and try again.',
            success: false);
        break;
      case 410:
        statusResponse = StatusResponse(
            message:
                'The target resource seems to have been permanently deleted.',
            success: false);
        break;
      case 411:
        statusResponse = StatusResponse(
            message: 'The Content-Length header field is required',
            success: false);
        break;
      case 412:
        statusResponse = StatusResponse(
            message:
                'The request did not pass some of the conditions required before fulfilment',
            success: false);
        break;
      case 413:
        statusResponse = StatusResponse(
            message:
                'The information being sent is larger than the server is willing or able to process.',
            success: false);
        break;
      case 414:
        statusResponse = StatusResponse(
            message:
                'The target URI is longer than the server is willing to interpret.',
            success: false);
        break;
      case 415:
        statusResponse = StatusResponse(
            message: 'The media format of the requested date is unsupported.',
            success: false);
        break;
      case 416:
        statusResponse = StatusResponse(
            message: 'The range specified in the header is not satisfactory.',
            success: false);
        break;
      case 417:
        statusResponse = StatusResponse(
            message:
                'The expectation indicated in the header could not be met by the server.',
            success: false);
        break;
      case 418:
        statusResponse = StatusResponse(
            message:
                'I\'m a Teapot: The server refuses to brew coffee (the server refuses to perform the function specified).',
            success: false);
        break;
      case 421:
        statusResponse = StatusResponse(
            message:
                'This request was directed at a server that is not configured to produce a response.',
            success: false);
        break;
      case 422:
        statusResponse = StatusResponse(
            message:
                'The request was well-formed, but the server was unable to follow it, due to semantic errors.',
            success: false);
        break;
      case 423:
        statusResponse = StatusResponse(
            message: 'The resource that is being accessed is locked.',
            success: false);
        break;
      case 424:
        statusResponse = StatusResponse(
            message:
                'The request failed due to the failure of a previous request.',
            success: false);
        break;
      case 425:
        statusResponse = StatusResponse(
            message:
                'The server is not willing to risk processing a request that might be replayed.',
            success: false);
        break;
      case 426:
        statusResponse = StatusResponse(
            message:
                'The server will be willing to process this request if the client protocol is upgraded.',
            success: false);
        break;
      case 428:
        statusResponse = StatusResponse(
            message:
                'The origin server requires the request to be conditional.',
            success: false);
        break;
      case 429:
        statusResponse = StatusResponse(
            message: 'Too many requests have been sent in the given time.',
            success: false);
        break;
      case 431:
        statusResponse = StatusResponse(
            message: 'The size of the request header field is too large.',
            success: false);
        break;
      case 451:
        statusResponse = StatusResponse(
            message:
                'The user has requested an illegal resource (such as pages and sites blocked by the government).',
            success: false);
        break;
      case 500:
        statusResponse = StatusResponse(
            message:
                'Internal Server Error: The server does not know how to handle this request.',
            success: false);
        break;
      case 501:
        statusResponse = StatusResponse(
            message:
                'Server Error: The request is not supported by the server.',
            success: false);
        break;
      case 502:
        statusResponse = StatusResponse(
            message:
                'Bad Gateway: The server received an invalid response while working as a gateway.',
            success: false);
        break;
      case 503:
        statusResponse = StatusResponse(
            message: 'Server Error: The server is currently unavailable.',
            success: false);
        break;
      case 505:
        statusResponse = StatusResponse(
            message:
                'Server Error: The current version of HTTP in use is not supported',
            success: false);
        break;
      case 507:
        statusResponse = StatusResponse(
            message:
                'Server Error: The server is unable to store the representation that would be needed to complete the request successfully.',
            success: false);
        break;
      case 508:
        statusResponse = StatusResponse(
            message:
                'Server Error: The server detected an infinite loop while processing this request.',
            success: false);
        break;
      case 511:
        statusResponse = StatusResponse(
            message:
                'Server Error: Authentication is required to gain network access.',
            success: false);
        break;
      case 506:
      case 510:
      default:
        statusResponse = StatusResponse(
            message: 'Looks like something went wrong.', success: false);
        break;
    }
    return statusResponse.message;
  }
}
