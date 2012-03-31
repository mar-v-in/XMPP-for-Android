.class public Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;
.super Ljava/lang/Object;
.source "RoomTransfer.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Provider;,
        Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;
    }
.end annotation


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "transfer"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/workgroup"


# instance fields
.field private invitee:Ljava/lang/String;

.field private inviter:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private room:Ljava/lang/String;

.field private sessionID:Ljava/lang/String;

.field private type:Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "invitee"
    .parameter "sessionID"
    .parameter "reason"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->type:Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

    .line 134
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->invitee:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->sessionID:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->reason:Ljava/lang/String;

    .line 137
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->type:Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

    return-void
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->sessionID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->invitee:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->inviter:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->reason:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->room:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string v0, "transfer"

    return-object v0
.end method

.method public getInviter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->inviter:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string v0, "http://jabber.org/protocol/workgroup"

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getRoom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->room:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "transfer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    const-string v2, "http://jabber.org/protocol/workgroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, "\" type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->type:Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "<session xmlns=\"http://jivesoftware.com/protocol/workgroup\" id=\""

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->sessionID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"></session>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->invitee:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 176
    const-string v1, "<invitee>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->invitee:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</invitee>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->inviter:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 179
    const-string v1, "<inviter>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->inviter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</inviter>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->reason:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 182
    const-string v1, "<reason>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</reason>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_2
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "transfer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
