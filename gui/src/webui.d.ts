export {}

declare global {
  const webui: WebUI

  interface WebUI {
    backendCall(msg: string): void 
  }
}
