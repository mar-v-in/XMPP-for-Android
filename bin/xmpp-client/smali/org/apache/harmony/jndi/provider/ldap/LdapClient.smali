.class public Lorg/apache/harmony/jndi/provider/ldap/LdapClient;
.super Ljava/lang/Object;
.source "LdapClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;,
        Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;,
        Lorg/apache/harmony/jndi/provider/ldap/LdapClient$InputStreamWrap;
    }
.end annotation


# instance fields
.field private final MAX_WAIT_TIME:J

.field private address:Ljava/lang/String;

.field private final batchedSearchRequests:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;",
            ">;"
        }
    .end annotation
.end field

.field private dispatcher:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;

.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private port:I

.field private referCount:I

.field private requests:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;",
            ">;"
        }
    .end annotation
.end field

.field private socket:Ljava/net/Socket;

.field private unls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$UnsolicitedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;

    .line 366
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->batchedSearchRequests:Ljava/util/Hashtable;

    .line 371
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->MAX_WAIT_TIME:J

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->unls:Ljava/util/List;

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->referCount:I

    .line 391
    return-void
.end method

.method public constructor <init>(Ljavax/net/SocketFactory;Ljava/lang/String;I)V
    .locals 2
    .parameter "factory"
    .parameter "address"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;

    .line 366
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->batchedSearchRequests:Ljava/util/Hashtable;

    .line 371
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->MAX_WAIT_TIME:J

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->unls:Ljava/util/List;

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->referCount:I

    .line 409
    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->address:Ljava/lang/String;

    .line 410
    iput p3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->port:I

    .line 411
    invoke-virtual {p1, p2, p3}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->socket:Ljava/net/Socket;

    .line 414
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$InputStreamWrap;

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$InputStreamWrap;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->in:Ljava/io/InputStream;

    .line 415
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->out:Ljava/io/OutputStream;

    .line 416
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;

    invoke-direct {v0, p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;)V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->dispatcher:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;

    .line 417
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->dispatcher:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->start()V

    .line 418
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 651
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->notifyUnls(Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;)V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;)Ljava/util/Hashtable;
    .locals 1
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;)Ljava/util/Hashtable;
    .locals 1
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->batchedSearchRequests:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$3(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->notifyPersistenSearchListener(Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;)V

    return-void
.end method

.method static synthetic access$4(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;)Ljava/io/InputStream;
    .locals 1
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method private doSearchOperation(Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;[Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    .locals 9
    .parameter "request"
    .parameter "response"
    .parameter "controls"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    move-object v6, p1

    check-cast v6, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;

    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getBatchSize()I

    move-result v0

    .line 579
    .local v0, batchSize:I
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    .line 580
    const/4 v6, 0x3

    .line 579
    invoke-direct {v3, v6, p1, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;-><init>(ILorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;[Lorg/apache/harmony/javax/naming/ldap/Control;)V

    .line 582
    .local v3, requestMsg:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getMessageId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 584
    .local v2, messageID:Ljava/lang/Integer;
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 585
    .local v1, lock:Ljava/lang/Object;
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;

    new-instance v7, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;

    new-instance v8, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    invoke-direct {v8, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;-><init>(Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;)V

    invoke-direct {v7, v1, v8}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;-><init>(Ljava/lang/Object;Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;)V

    invoke-virtual {v6, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    :try_start_0
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->encode()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 589
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 590
    invoke-direct {p0, v2, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->waitResponse(Ljava/lang/Integer;Ljava/lang/Object;)Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    move-result-object v4

    .line 591
    .local v4, responseMsg:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    const/4 v5, 0x1

    .line 592
    .local v5, size:I
    :goto_0
    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getOperationIndex()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 605
    :goto_1
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    return-object v4

    .line 593
    :cond_0
    if-ne v5, v0, :cond_1

    .line 594
    :try_start_1
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->batchedSearchRequests:Ljava/util/Hashtable;

    .line 595
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;

    .line 594
    invoke-virtual {v7, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 603
    .end local v4           #responseMsg:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    .end local v5           #size:I
    :catchall_0
    move-exception v6

    .line 605
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;

    invoke-virtual {v7, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    throw v6

    .line 598
    .restart local v4       #responseMsg:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    .restart local v5       #size:I
    :cond_1
    :try_start_2
    invoke-direct {p0, v2, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->waitResponse(Ljava/lang/Integer;Ljava/lang/Object;)Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 599
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;ILjava/util/Hashtable;)Lorg/apache/harmony/jndi/provider/ldap/LdapClient;
    .locals 1
    .parameter "host"
    .parameter "port"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Hashtable",
            "<**>;)",
            "Lorg/apache/harmony/jndi/provider/ldap/LdapClient;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 317
    .local p2, envmt:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->newInstance(Ljava/lang/String;ILjava/util/Hashtable;Z)Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;ILjava/util/Hashtable;Z)Lorg/apache/harmony/jndi/provider/ldap/LdapClient;
    .locals 4
    .parameter "host"
    .parameter "port"
    .parameter
    .parameter "isLdaps"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Hashtable",
            "<**>;Z)",
            "Lorg/apache/harmony/jndi/provider/ldap/LdapClient;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 323
    .local p2, envmt:Ljava/util/Hashtable;,"Ljava/util/Hashtable<**>;"
    invoke-static {p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->getSocketFactory(Ljava/util/Hashtable;Z)Ljavax/net/SocketFactory;

    move-result-object v2

    .line 328
    .local v2, factory:Ljavax/net/SocketFactory;
    :try_start_0
    new-instance v3, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    invoke-direct {v3, v2, p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;-><init>(Ljavax/net/SocketFactory;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/apache/harmony/javax/naming/CommunicationException;

    invoke-direct {v1}, Lorg/apache/harmony/javax/naming/CommunicationException;-><init>()V

    .line 331
    .local v1, ex:Lorg/apache/harmony/javax/naming/CommunicationException;
    invoke-virtual {v1, v0}, Lorg/apache/harmony/javax/naming/CommunicationException;->setRootCause(Ljava/lang/Throwable;)V

    .line 332
    throw v1
.end method

.method private notifyPersistenSearchListener(Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;)V
    .locals 7
    .parameter "element"

    .prologue
    .line 632
    iget-object v3, p1, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->response:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    .line 633
    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getResponseOp()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;

    move-result-object v3

    .line 632
    check-cast v3, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;

    .line 633
    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getSearchResult()Lorg/apache/harmony/jndi/provider/ldap/LdapSearchResult;

    move-result-object v2

    .line 632
    check-cast v2, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;

    .line 635
    .local v2, psr:Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;
    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;->getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 636
    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;->getResult()Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;->receiveNotificationHook(Ljava/lang/Object;)V

    .line 640
    :cond_0
    iget-object v3, p1, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->response:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getControls()[Lorg/apache/harmony/javax/naming/ldap/Control;

    move-result-object v1

    .line 641
    .local v1, cs:[Lorg/apache/harmony/javax/naming/ldap/Control;
    if-eqz v1, :cond_1

    .line 642
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_2

    .line 649
    :cond_1
    return-void

    .line 642
    :cond_2
    aget-object v0, v1, v3

    .line 643
    .local v0, control:Lorg/apache/harmony/javax/naming/ldap/Control;
    const-string v5, "2.16.840.1.113730.3.4.7"

    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/ldap/Control;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 644
    new-instance v5, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;

    .line 645
    invoke-interface {v0}, Lorg/apache/harmony/javax/naming/ldap/Control;->getEncodedValue()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;-><init>([B)V

    .line 644
    invoke-virtual {v2, v5}, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;->receiveNotificationHook(Ljava/lang/Object;)V

    .line 642
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private notifyUnls(Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 652
    .line 653
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getResponseOp()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;

    move-result-object v1

    .line 652
    check-cast v1, Lorg/apache/harmony/jndi/provider/ldap/UnsolicitedNotificationImpl;

    .line 654
    .local v1, un:Lorg/apache/harmony/jndi/provider/ldap/UnsolicitedNotificationImpl;
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->unls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 657
    return-void

    .line 654
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$UnsolicitedListener;

    .line 655
    .local v0, listener:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$UnsolicitedListener;
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getControls()[Lorg/apache/harmony/javax/naming/ldap/Control;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$UnsolicitedListener;->receiveNotification(Lorg/apache/harmony/jndi/provider/ldap/UnsolicitedNotificationImpl;[Lorg/apache/harmony/javax/naming/ldap/Control;)V

    goto :goto_0
.end method

.method private waitResponse(Ljava/lang/Integer;Ljava/lang/Object;)Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    .locals 3
    .parameter "messageID"
    .parameter "lock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 700
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;

    .line 706
    .local v0, element:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->response:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getMessageId()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 708
    monitor-enter p2

    .line 710
    const-wide/16 v1, 0x7530

    :try_start_0
    invoke-virtual {p2, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :goto_0
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #element:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;
    check-cast v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;

    .line 720
    .restart local v0       #element:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->response:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getMessageId()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 722
    new-instance v1, Ljava/io/IOException;

    const-string v2, "ldap.31"

    invoke-static {v2}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 708
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 726
    :cond_1
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->ex:Ljava/lang/Exception;

    if-eqz v1, :cond_4

    .line 728
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 729
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->close()V

    .line 732
    :cond_2
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->ex:Ljava/lang/Exception;

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_3

    .line 733
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->ex:Ljava/lang/Exception;

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 736
    :cond_3
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->ex:Ljava/lang/Exception;

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 739
    :cond_4
    iget-object v1, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->response:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    return-object v1

    .line 711
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public abandon(I[Lorg/apache/harmony/javax/naming/ldap/Control;)V
    .locals 2
    .parameter "messageId"
    .parameter "controls"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    const/16 v0, 0x11

    .line 423
    new-instance v1, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$1;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;I)V

    .line 422
    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->doOperationWithoutResponse(ILorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;[Lorg/apache/harmony/javax/naming/ldap/Control;)V

    .line 431
    return-void
.end method

.method public addPersistentSearch(Lorg/apache/harmony/jndi/provider/ldap/SearchOp;)I
    .locals 8
    .parameter "op"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    .line 435
    const/4 v3, 0x3

    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getRequest()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;

    move-result-object v4

    .line 436
    const/4 v5, 0x1

    new-array v5, v5, [Lorg/apache/harmony/javax/naming/ldap/Control;

    const/4 v6, 0x0

    new-instance v7, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchControl;

    invoke-direct {v7}, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchControl;-><init>()V

    aput-object v7, v5, v6

    .line 434
    invoke-direct {v2, v3, v4, v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;-><init>(ILorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;[Lorg/apache/harmony/javax/naming/ldap/Control;)V

    .line 438
    .local v2, request:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getMessageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 441
    .local v1, messageID:Ljava/lang/Integer;
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;

    .line 442
    new-instance v4, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;

    const/4 v5, 0x0

    new-instance v6, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/ldap/SearchOp;->getResponse()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;-><init>(Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;)V

    invoke-direct {v4, v5, v6}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;-><init>(Ljava/lang/Object;Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;)V

    .line 441
    invoke-virtual {v3, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->encode()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 445
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 446
    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getMessageId()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 447
    :catch_0
    move-exception v0

    .line 449
    .local v0, e:Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    throw v0
.end method

.method public addUnsolicitedListener(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$UnsolicitedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 456
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->unls:Ljava/util/List;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->unls:Ljava/util/List;

    .line 460
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->unls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->unls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_1
    return-void
.end method

.method public close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 476
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 478
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :cond_0
    :goto_0
    iput-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->socket:Ljava/net/Socket;

    .line 485
    iput-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->in:Ljava/io/InputStream;

    .line 486
    iput-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->out:Ljava/io/OutputStream;

    .line 489
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->dispatcher:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;

    if-eqz v1, :cond_1

    .line 490
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->dispatcher:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->setStopped(Z)V

    .line 491
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->dispatcher:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;

    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->interrupt()V

    .line 495
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;

    if-eqz v1, :cond_3

    .line 496
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 505
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 506
    iput-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;

    .line 509
    :cond_3
    return-void

    .line 496
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;

    .line 497
    .local v0, element:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->lock:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 498
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 499
    :try_start_1
    iget-object v3, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->lock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 498
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 479
    .end local v0           #element:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public doOperation(ILorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;[Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    .locals 6
    .parameter "opIndex"
    .parameter "request"
    .parameter "response"
    .parameter "controls"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    .line 529
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->doSearchOperation(Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;[Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    move-result-object v3

    .line 543
    :goto_0
    return-object v3

    .line 532
    :cond_0
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    invoke-direct {v2, p1, p2, p4}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;-><init>(ILorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;[Lorg/apache/harmony/javax/naming/ldap/Control;)V

    .line 535
    .local v2, requestMsg:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getMessageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 537
    .local v1, messageID:Ljava/lang/Integer;
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 538
    .local v0, lock:Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;

    new-instance v4, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;

    new-instance v5, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    invoke-direct {v5, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;-><init>(Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;)V

    invoke-direct {v4, v0, v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;-><init>(Ljava/lang/Object;Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;)V

    invoke-virtual {v3, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->encode()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 542
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 543
    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->waitResponse(Ljava/lang/Integer;Ljava/lang/Object;)Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 547
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 545
    :catchall_0
    move-exception v3

    .line 547
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    throw v3
.end method

.method public doOperation(Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;[Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    .locals 3
    .parameter "operation"
    .parameter "controls"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    invoke-interface {p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;->getRequestId()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;->getRequest()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;

    move-result-object v1

    .line 565
    invoke-interface {p1}, Lorg/apache/harmony/jndi/provider/ldap/LdapOperation;->getResponse()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;

    move-result-object v2

    .line 564
    invoke-virtual {p0, v0, v1, v2, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->doOperation(ILorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;[Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    move-result-object v0

    return-object v0
.end method

.method public doOperationWithoutResponse(ILorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;[Lorg/apache/harmony/javax/naming/ldap/Control;)V
    .locals 3
    .parameter "opIndex"
    .parameter "op"
    .parameter "controls"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;-><init>(ILorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;[Lorg/apache/harmony/javax/naming/ldap/Control;)V

    .line 571
    .local v0, request:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->encode()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 572
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 573
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 612
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->close()V

    .line 613
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->port:I

    return v0
.end method

.method public getReferCount()I
    .locals 1

    .prologue
    .line 624
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->referCount:I

    return v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public removePersistentSearch(I[Lorg/apache/harmony/javax/naming/ldap/Control;)V
    .locals 2
    .parameter "messageId"
    .parameter "controls"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->abandon(I[Lorg/apache/harmony/javax/naming/ldap/Control;)V

    .line 663
    return-void
.end method

.method public setSocket(Ljava/net/Socket;)V
    .locals 2
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 666
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->socket:Ljava/net/Socket;

    .line 667
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$InputStreamWrap;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$InputStreamWrap;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->in:Ljava/io/InputStream;

    .line 668
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->out:Ljava/io/OutputStream;

    .line 669
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->dispatcher:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->dispatcher:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->setStopped(Z)V

    .line 671
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->dispatcher:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->interrupt()V

    .line 673
    :cond_0
    new-instance v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;

    invoke-direct {v0, p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;-><init>(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;)V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->dispatcher:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;

    .line 674
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->dispatcher:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->start()V

    .line 675
    return-void
.end method

.method public unuse()V
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->referCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->referCount:I

    .line 680
    return-void
.end method

.method public use()V
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->referCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->referCount:I

    .line 685
    return-void
.end method
