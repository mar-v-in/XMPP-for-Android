.class public Lorg/jivesoftware/smack/Connection$ListenerWrapper;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ListenerWrapper"
.end annotation


# instance fields
.field private final packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private final packetListener:Lorg/jivesoftware/smack/PacketListener;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 0
    .parameter "packetListener"
    .parameter "packetFilter"

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    .line 156
    iput-object p2, p0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 157
    return-void
.end method


# virtual methods
.method public notifyListener(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1
    .parameter "packet"

    .prologue
    .line 167
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/PacketFilter;->accept(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/PacketListener;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 170
    :cond_1
    return-void
.end method
