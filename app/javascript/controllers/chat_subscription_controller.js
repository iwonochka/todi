import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  static values = { chatId: Number, userId: Number }
  static targets = ["messages", "form", "input"]

  connect() {
    console.log(this.userIdValue)
    this.channel = consumer.subscriptions.create(
      { channel: "ChatChannel", id: this.chatIdValue },
      { received: (data) =>{
        console.log(data)

        this.insertMessageScrollDownAndResetForm(data)}
      })
      console.log(`Subscribed to the chat with the id ${this.chatIdValue}.`)
    }
    insertMessageScrollDownAndResetForm(data) {
      let userId = parseInt(data.match(/data-sender-id="(\d+)"/)[1])
      //parseInt(userId[1]))
      let element = document.createElement('div')
      element.innerHTML = data
      element.classList.add('custom-message')
      if(this.userIdValue == userId){
        element.classList.add('outgoing')
      } else {
        element.classList.add('incoming')
      }
      this.messagesTarget.insertAdjacentElement("beforeend", element)
      this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
      this.inputTarget.value = "";
  }
  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}
