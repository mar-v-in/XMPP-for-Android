.class public Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes$Provider;
.super Ljava/lang/Object;
.source "ChatNotes.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;-><init>()V

    .line 46
    .local v0, chatNotes:Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;
    const/4 v1, 0x0

    .line 47
    .local v1, done:Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 64
    return-object v0

    .line 48
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 49
    .local v2, eventType:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 50
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sessionID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->setSessionID(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, note:Ljava/lang/String;
    const-string v4, "\\\\n"

    const-string v5, "\n"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/workgroup/ext/notes/ChatNotes;->setNotes(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v3           #note:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 58
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "chat-notes"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    const/4 v1, 0x1

    goto :goto_0
.end method
