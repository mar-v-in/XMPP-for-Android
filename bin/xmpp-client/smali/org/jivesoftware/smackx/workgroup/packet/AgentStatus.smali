.class public Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;
.super Ljava/lang/Object;
.source "AgentStatus.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;,
        Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$Provider;
    }
.end annotation


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "agent-status"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/workgroup"

.field private static final UTC_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field private final currentChats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;",
            ">;"
        }
    .end annotation
.end field

.field private maxChats:I

.field private workgroupJID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 205
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 206
    const-string v1, "yyyyMMdd\'T\'HH:mm:ss"

    .line 205
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->UTC_FORMAT:Ljava/text/SimpleDateFormat;

    .line 209
    sget-object v0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->UTC_FORMAT:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT+0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 38
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->currentChats:Ljava/util/List;

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->maxChats:I

    .line 227
    return-void
.end method

.method static synthetic access$0()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->UTC_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->workgroupJID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->currentChats:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 224
    iput p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->maxChats:I

    return-void
.end method


# virtual methods
.method public getCurrentChats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->currentChats:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string v0, "agent-status"

    return-object v0
.end method

.method public getMaxChats()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->maxChats:I

    return v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    const-string v0, "http://jabber.org/protocol/workgroup"

    return-object v0
.end method

.method public getWorkgroupJID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->workgroupJID:Ljava/lang/String;

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "agent-status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " xmlns=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 263
    const-string v3, "http://jabber.org/protocol/workgroup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->workgroupJID:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 265
    const-string v2, " jid=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->workgroupJID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_0
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->maxChats:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 269
    const-string v2, "<max-chats>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->maxChats:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</max-chats>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->currentChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 272
    const-string v2, "<current-chats xmlns= \"http://jivesoftware.com/protocol/workgroup\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->currentChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 276
    const-string v2, "</current-chats>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_2
    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 273
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;

    .line 274
    .local v1, chatInfo:Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatus$ChatInfo;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
