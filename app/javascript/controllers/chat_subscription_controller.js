import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  static values = { chatId: Number }
  static targets = ["messages", "form", "input"]

  connect() {

    this.channel = consumer.subscriptions.create(
      { channel: "ChatChannel", id: this.chatIdValue },
      { received: data => this.insertMessageScrollDownAndResetForm(data)}
      )
      console.log(`Subscribed to the chat with the id ${this.chatIdValue}.`)
    }
    insertMessageScrollDownAndResetForm(data) {
      console.log("hello")
      this.messagesTarget.insertAdjacentHTML("beforeend", data)
      this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
      console.log(this.inputTarget.value)
    this.inputTarget.value = "";
  }
  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}
