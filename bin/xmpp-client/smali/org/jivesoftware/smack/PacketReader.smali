.class Lorg/jivesoftware/smack/PacketReader;
.super Ljava/lang/Object;
.source "PacketReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/PacketReader$ListenerNotification;
    }
.end annotation


# instance fields
.field private final connection:Lorg/jivesoftware/smack/XMPPConnection;

.field private connectionID:Ljava/lang/String;

.field private connectionSemaphore:Ljava/util/concurrent/Semaphore;

.field private done:Z

.field private listenerExecutor:Ljava/util/concurrent/ExecutorService;

.field private parser:Lorg/xmlpull/v1/XmlPullParser;

.field private readerThread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 85
    invoke-virtual {p0}, Lorg/jivesoftware/smack/PacketReader;->init()V

    .line 86
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smack/PacketReader;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    return-object v0
.end method

.method static synthetic access$1(Lorg/jivesoftware/smack/PacketReader;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketReader;->parsePackets(Ljava/lang/Thread;)V

    return-void
.end method

.method private parseFeatures(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v2, 0x0

    .line 181
    .local v2, startTLSReceived:Z
    const/4 v3, 0x0

    .line 182
    .local v3, startTLSRequired:Z
    const/4 v0, 0x0

    .line 183
    .local v0, done:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 230
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->isSecureConnection()Z

    move-result v4

    if-nez v4, :cond_a

    .line 231
    if-nez v2, :cond_a

    .line 232
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getSecurityMode()Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->required:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    if-ne v4, v5, :cond_a

    .line 233
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    .line 234
    const-string v5, "Server does not support security (TLS), but security required by connection configuration."

    .line 236
    new-instance v6, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v7, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->forbidden:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    .line 233
    invoke-direct {v4, v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 184
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 186
    .local v1, eventType:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    .line 187
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "starttls"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 188
    const/4 v2, 0x1

    goto :goto_0

    .line 189
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mechanisms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 195
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v4

    .line 196
    invoke-static {p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseMechanisms(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;

    move-result-object v5

    .line 195
    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/SASLAuthentication;->setAvailableSASLMethods(Ljava/util/Collection;)V

    goto :goto_0

    .line 197
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bind"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 200
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/SASLAuthentication;->bindingRequired()V

    goto :goto_0

    .line 201
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "session"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 203
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/SASLAuthentication;->sessionsSupported()V

    goto/16 :goto_0

    .line 204
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "compression"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 206
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 207
    invoke-static {p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseCompressionMethods(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;

    move-result-object v5

    .line 206
    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/XMPPConnection;->setAvailableCompressionMethods(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 208
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "register"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getAccountManager()Lorg/jivesoftware/smack/AccountManager;

    move-result-object v4

    .line 210
    const/4 v5, 0x1

    .line 209
    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/AccountManager;->setSupportsAccountCreation(Z)V

    goto/16 :goto_0

    .line 212
    :cond_7
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 213
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "starttls"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 215
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4, v3}, Lorg/jivesoftware/smack/XMPPConnection;->startTLSReceived(Z)V

    goto/16 :goto_0

    .line 216
    :cond_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "required"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 217
    if-eqz v2, :cond_9

    .line 218
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 219
    :cond_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "features"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 242
    .end local v1           #eventType:I
    :cond_a
    if-eqz v2, :cond_b

    .line 243
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getSecurityMode()Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->disabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    if-ne v4, v5, :cond_c

    .line 244
    :cond_b
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->releaseConnectionIDLock()V

    .line 246
    :cond_c
    return-void
.end method

.method private parsePackets(Ljava/lang/Thread;)V
    .locals 10
    .parameter "thread"

    .prologue
    .line 257
    :try_start_0
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 259
    .local v2, eventType:I
    :cond_0
    const/4 v6, 0x2

    if-ne v2, v6, :cond_11

    .line 260
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "message"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 261
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v6}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseMessage(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/jivesoftware/smack/PacketReader;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 375
    :cond_1
    :goto_0
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 376
    iget-boolean v6, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_2

    .line 377
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    if-eq p1, v6, :cond_0

    .line 385
    .end local v2           #eventType:I
    :cond_2
    :goto_1
    return-void

    .line 262
    .restart local v2       #eventType:I
    :cond_3
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "iq"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 263
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 264
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 263
    invoke-static {v6, v7}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseIQ(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/jivesoftware/smack/PacketReader;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    .end local v2           #eventType:I
    :catch_0
    move-exception v1

    .line 379
    .local v1, e:Ljava/lang/Exception;
    iget-boolean v6, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v6, :cond_2

    .line 382
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 265
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #eventType:I
    :cond_4
    :try_start_1
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "presence"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 266
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v6}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePresence(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/jivesoftware/smack/PacketReader;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 272
    :cond_5
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "stream"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 275
    const-string v6, "jabber:client"

    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 277
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 278
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 280
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    .line 281
    const-string v6, "1.0"

    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 282
    const-string v8, ""

    const-string v9, "version"

    .line 281
    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 290
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->releaseConnectionIDLock()V

    .line 277
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 292
    :cond_7
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 293
    const-string v7, "from"

    .line 292
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 296
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v6, v6, Lorg/jivesoftware/smack/XMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 297
    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 296
    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setServiceName(Ljava/lang/String;)V

    goto :goto_3

    .line 301
    .end local v4           #i:I
    :cond_8
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "error"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 302
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    .line 303
    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseStreamError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v7

    .line 302
    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/StreamError;)V

    throw v6

    .line 304
    :cond_9
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "features"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 305
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v6}, Lorg/jivesoftware/smack/PacketReader;->parseFeatures(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 306
    :cond_a
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "proceed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 308
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/XMPPConnection;->proceedTLSReceived()V

    .line 312
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->resetParser()V

    goto/16 :goto_0

    .line 313
    :cond_b
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "failure"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 314
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, namespace:Ljava/lang/String;
    const-string v6, "urn:ietf:params:xml:ns:xmpp-tls"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 318
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "TLS negotiation has failed"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 319
    :cond_c
    const-string v6, "http://jabber.org/protocol/compress"

    .line 320
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 327
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/XMPPConnection;->streamCompressionDenied()V

    goto/16 :goto_0

    .line 333
    :cond_d
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v6}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseSASLFailure(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/sasl/SASLMechanism$Failure;

    move-result-object v3

    .line 334
    .local v3, failure:Lorg/jivesoftware/smack/sasl/SASLMechanism$Failure;
    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/PacketReader;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 335
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v6

    .line 337
    invoke-virtual {v3}, Lorg/jivesoftware/smack/sasl/SASLMechanism$Failure;->getCondition()Ljava/lang/String;

    move-result-object v7

    .line 336
    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticationFailed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 339
    .end local v3           #failure:Lorg/jivesoftware/smack/sasl/SASLMechanism$Failure;
    .end local v5           #namespace:Ljava/lang/String;
    :cond_e
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "challenge"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 342
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, challengeData:Ljava/lang/String;
    new-instance v6, Lorg/jivesoftware/smack/sasl/SASLMechanism$Challenge;

    invoke-direct {v6, v0}, Lorg/jivesoftware/smack/sasl/SASLMechanism$Challenge;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lorg/jivesoftware/smack/PacketReader;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 344
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/jivesoftware/smack/SASLAuthentication;->challengeReceived(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 346
    .end local v0           #challengeData:Ljava/lang/String;
    :cond_f
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "success"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 347
    new-instance v6, Lorg/jivesoftware/smack/sasl/SASLMechanism$Success;

    iget-object v7, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/sasl/SASLMechanism$Success;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lorg/jivesoftware/smack/PacketReader;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 350
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v6, v6, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/PacketWriter;->openStream()V

    .line 354
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->resetParser()V

    .line 358
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/XMPPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticated()V

    goto/16 :goto_0

    .line 359
    :cond_10
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "compressed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 363
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/XMPPConnection;->startStreamCompression()V

    .line 367
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->resetParser()V

    goto/16 :goto_0

    .line 369
    :cond_11
    const/4 v6, 0x3

    if-ne v2, v6, :cond_1

    .line 370
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "stream"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 372
    iget-object v6, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/XMPPConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3
    .parameter "packet"

    .prologue
    .line 396
    if-nez p1, :cond_0

    .line 407
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getPacketCollectors()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 406
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lorg/jivesoftware/smack/PacketReader$ListenerNotification;

    invoke-direct {v2, p0, p1}, Lorg/jivesoftware/smack/PacketReader$ListenerNotification;-><init>(Lorg/jivesoftware/smack/PacketReader;Lorg/jivesoftware/smack/packet/Packet;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 401
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/PacketCollector;

    .line 402
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketCollector;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_1
.end method

.method private releaseConnectionIDLock()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 422
    return-void
.end method

.method private resetParser()V
    .locals 4

    .prologue
    .line 431
    :try_start_0
    new-instance v1, Lorg/xmlpull/mxp1/MXParser;

    invoke-direct {v1}, Lorg/xmlpull/mxp1/MXParser;-><init>()V

    iput-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 432
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 433
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v2, v2, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/Reader;

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method cleanup()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->recvListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 93
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->collectors:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 94
    return-void
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    .line 105
    new-instance v0, Lorg/jivesoftware/smack/PacketReader$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketReader$1;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    .line 111
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Smack Packet Reader ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget v2, v2, Lorg/jivesoftware/smack/XMPPConnection;->connectionCounterValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 119
    new-instance v0, Lorg/jivesoftware/smack/PacketReader$2;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketReader$2;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 118
    iput-object v0, p0, Lorg/jivesoftware/smack/PacketReader;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 132
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketReader;->resetParser()V

    .line 133
    return-void
.end method

.method notifyConnectionError(Ljava/lang/Exception;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 143
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    .line 145
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    new-instance v3, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/XMPPConnection;->shutdown(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 147
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 150
    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getConnectionListeners()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 149
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 159
    return-void

    .line 150
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/ConnectionListener;

    .line 152
    .local v1, listener:Lorg/jivesoftware/smack/ConnectionListener;
    :try_start_0
    invoke-interface {v1, p1}, Lorg/jivesoftware/smack/ConnectionListener;->connectionClosedOnError(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 156
    .local v0, e2:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected notifyReconnection()V
    .locals 4

    .prologue
    .line 167
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 168
    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getConnectionListeners()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 167
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    return-void

    .line 168
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/ConnectionListener;

    .line 170
    .local v1, listener:Lorg/jivesoftware/smack/ConnectionListener;
    :try_start_0
    invoke-interface {v1}, Lorg/jivesoftware/smack/ConnectionListener;->reconnectionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 445
    iget-boolean v2, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    if-nez v2, :cond_0

    .line 446
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 447
    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getConnectionListeners()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 446
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 457
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jivesoftware/smack/PacketReader;->done:Z

    .line 460
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 461
    return-void

    .line 447
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/ConnectionListener;

    .line 449
    .local v1, listener:Lorg/jivesoftware/smack/ConnectionListener;
    :try_start_0
    invoke-interface {v1}, Lorg/jivesoftware/smack/ConnectionListener;->connectionClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startup()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 473
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connectionSemaphore:Ljava/util/concurrent/Semaphore;

    .line 475
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->readerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 480
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connectionSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 486
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    .line 487
    .local v0, waitTime:I
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connectionSemaphore:Ljava/util/concurrent/Semaphore;

    mul-int/lit8 v2, v0, 0x3

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    .end local v0           #waitTime:I
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 492
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    .line 493
    const-string v2, "Connection failed. No response from server."

    .line 492
    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader;->connectionID:Ljava/lang/String;

    iput-object v2, v1, Lorg/jivesoftware/smack/XMPPConnection;->connectionID:Ljava/lang/String;

    .line 497
    return-void

    .line 488
    :catch_0
    move-exception v1

    goto :goto_0
.end method
