.class public Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;
.super Ljava/lang/Object;
.source "QueueUpdate.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate$Provider;
    }
.end annotation


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "queue-status"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/workgroup"


# instance fields
.field private final position:I

.field private final remainingTime:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "position"
    .parameter "remainingTime"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;->position:I

    .line 80
    iput p2, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;->remainingTime:I

    .line 81
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "queue-status"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "http://jabber.org/protocol/workgroup"

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;->position:I

    return v0
.end method

.method public getRemaingTime()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;->remainingTime:I

    return v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<queue-status xmlns=\"http://jabber.org/protocol/workgroup\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;->position:I

    if-eq v1, v3, :cond_0

    .line 118
    const-string v1, "<position>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</position>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_0
    iget v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;->remainingTime:I

    if-eq v1, v3, :cond_1

    .line 121
    const-string v1, "<time>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueUpdate;->remainingTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</time>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_1
    const-string v1, "</queue-status>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
