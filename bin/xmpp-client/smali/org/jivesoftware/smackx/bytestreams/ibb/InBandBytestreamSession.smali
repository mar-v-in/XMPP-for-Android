.class public Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
.super Ljava/lang/Object;
.source "InBandBytestreamSession.java"

# interfaces
.implements Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBDataPacketFilter;,
        Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;,
        Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;,
        Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;,
        Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBOutputStream;,
        Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBInputStream;,
        Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBOutputStream;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$jivesoftware$smackx$bytestreams$ibb$InBandBytestreamManager$StanzaType:[I


# instance fields
.field private final byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

.field private closeBothStreamsEnabled:Z

.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

.field private isClosed:Z

.field private outputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;

.field private final remoteJID:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$org$jivesoftware$smackx$bytestreams$ibb$InBandBytestreamManager$StanzaType()[I
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->$SWITCH_TABLE$org$jivesoftware$smackx$bytestreams$ibb$InBandBytestreamManager$StanzaType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;->values()[Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;->IQ:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;->MESSAGE:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->$SWITCH_TABLE$org$jivesoftware$smackx$bytestreams$ibb$InBandBytestreamManager$StanzaType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected constructor <init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;Ljava/lang/String;)V
    .locals 3
    .parameter "connection"
    .parameter "byteStreamRequest"
    .parameter "remoteJID"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput-boolean v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->closeBothStreamsEnabled:Z

    .line 703
    iput-boolean v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->isClosed:Z

    .line 717
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->connection:Lorg/jivesoftware/smack/Connection;

    .line 718
    iput-object p2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    .line 719
    iput-object p3, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->remoteJID:Ljava/lang/String;

    .line 722
    invoke-static {}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->$SWITCH_TABLE$org$jivesoftware$smackx$bytestreams$ibb$InBandBytestreamManager$StanzaType()[I

    move-result-object v0

    invoke-virtual {p2}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;->getStanza()Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 733
    :goto_0
    return-void

    .line 724
    :pswitch_0
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;

    invoke-direct {v0, p0, v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    .line 725
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBOutputStream;

    invoke-direct {v0, p0, v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBOutputStream;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBOutputStream;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->outputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;

    goto :goto_0

    .line 728
    :pswitch_1
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBInputStream;

    invoke-direct {v0, p0, v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBInputStream;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBInputStream;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    .line 729
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBOutputStream;

    invoke-direct {v0, p0, v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBOutputStream;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBOutputStream;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->outputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;

    goto :goto_0

    .line 722
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 697
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->remoteJID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;
    .locals 1
    .parameter

    .prologue
    .line 682
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    return-object v0
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)Lorg/jivesoftware/smack/Connection;
    .locals 1
    .parameter

    .prologue
    .line 679
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 737
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->closeByLocal(Z)V

    .line 738
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->closeByLocal(Z)V

    .line 739
    return-void
.end method

.method protected declared-synchronized closeByLocal(Z)V
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 749
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 785
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 753
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->closeBothStreamsEnabled:Z

    if-eqz v2, :cond_2

    .line 754
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    #calls: Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->closeInternal()V
    invoke-static {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->access$0(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;)V

    .line 755
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->outputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;->closeInternal(Z)V

    .line 765
    :goto_1
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    #getter for: Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->isClosed:Z
    invoke-static {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->access$1(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->outputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;

    iget-boolean v2, v2, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;->isClosed:Z

    if-eqz v2, :cond_0

    .line 766
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->isClosed:Z

    .line 769
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;

    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;-><init>(Ljava/lang/String;)V

    .line 770
    .local v0, close:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->remoteJID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;->setTo(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 772
    :try_start_2
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v2, v0}, Lorg/jivesoftware/smack/util/SyncPacketSend;->getReply(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smack/packet/Packet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_2 .. :try_end_2} :catch_0

    .line 778
    :try_start_3
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    #calls: Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->cleanup()V
    invoke-static {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->access$2(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;)V

    .line 781
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getByteStreamManager(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    move-result-object v2

    .line 782
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getSessions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 749
    .end local v0           #close:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 757
    :cond_2
    if-eqz p1, :cond_3

    .line 758
    :try_start_4
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    #calls: Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->closeInternal()V
    invoke-static {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->access$0(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;)V

    goto :goto_1

    .line 761
    :cond_3
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->outputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;->closeInternal(Z)V

    goto :goto_1

    .line 773
    .restart local v0       #close:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;
    :catch_0
    move-exception v1

    .line 774
    .local v1, e:Lorg/jivesoftware/smack/XMPPException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while closing stream: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 774
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected closeByPeer(Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;)V
    .locals 3
    .parameter "closeRequest"

    .prologue
    .line 800
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    #calls: Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->closeInternal()V
    invoke-static {v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->access$0(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;)V

    .line 801
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    #calls: Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->cleanup()V
    invoke-static {v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->access$2(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;)V

    .line 802
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->outputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;->closeInternal(Z)V

    .line 805
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 806
    .local v0, confirmClose:Lorg/jivesoftware/smack/packet/IQ;
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 808
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->outputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    #getter for: Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->readTimeout:I
    invoke-static {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->access$3(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;)I

    move-result v0

    return v0
.end method

.method public isCloseBothStreamsEnabled()Z
    .locals 1

    .prologue
    .line 834
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->closeBothStreamsEnabled:Z

    return v0
.end method

.method public setCloseBothStreamsEnabled(Z)V
    .locals 0
    .parameter "closeBothStreamsEnabled"

    .prologue
    .line 847
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->closeBothStreamsEnabled:Z

    .line 848
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 852
    if-gez p1, :cond_0

    .line 853
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    #setter for: Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->readTimeout:I
    invoke-static {v0, p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->access$4(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;I)V

    .line 856
    return-void
.end method
