.class public interface abstract Lxmpp/client/service/chat/ChatListener;
.super Ljava/lang/Object;
.source "ChatListener.java"


# virtual methods
.method public abstract chatCreated(Lxmpp/client/service/chat/Chat;Z)V
.end method

.method public abstract chatStateChanged(Lxmpp/client/service/chat/Chat;)V
.end method

.method public abstract chatUpdated(Lxmpp/client/service/chat/Chat;)V
.end method

.method public abstract processMessage(Lxmpp/client/service/chat/Chat;Lxmpp/client/service/chat/ChatMessage;)V
.end method
