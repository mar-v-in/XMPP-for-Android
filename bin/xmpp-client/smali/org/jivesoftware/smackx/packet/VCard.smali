.class public Lorg/jivesoftware/smackx/packet/VCard;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "VCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;,
        Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;
    }
.end annotation


# instance fields
.field private avatar:Ljava/lang/String;

.field private emailHome:Ljava/lang/String;

.field private emailWork:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private final homeAddr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final homePhones:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastName:Ljava/lang/String;

.field private middleName:Ljava/lang/String;

.field private organization:Ljava/lang/String;

.field private organizationUnit:Ljava/lang/String;

.field private final otherSimpleFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final otherUnescapableFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final workAddr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final workPhones:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->homePhones:Ljava/util/Map;

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->workPhones:Ljava/util/Map;

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->homeAddr:Ljava/util/Map;

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->workAddr:Ljava/util/Map;

    .line 329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    .line 333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherUnescapableFields:Ljava/util/Map;

    .line 336
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherUnescapableFields:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$10(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->workPhones:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$12(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->homePhones:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$13(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->workAddr:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$14(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->homeAddr:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$15(Lorg/jivesoftware/smackx/packet/VCard;)Z
    .locals 1
    .parameter

    .prologue
    .line 606
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard;->hasContent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lorg/jivesoftware/smackx/packet/VCard;)Z
    .locals 1
    .parameter

    .prologue
    .line 639
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard;->hasOrganizationFields()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->organization:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->organizationUnit:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lorg/jivesoftware/smackx/packet/VCard;)Z
    .locals 1
    .parameter

    .prologue
    .line 635
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard;->hasNameField()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;

    return-object v0
.end method

.method private checkAuthenticated(Lorg/jivesoftware/smack/Connection;Z)V
    .locals 2
    .parameter "connection"
    .parameter "checkForAnonymous"

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No connection was provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/Connection;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 345
    const-string v1, "Connection is not authenticated"

    .line 344
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lorg/jivesoftware/smack/Connection;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection cannot be anonymous"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_2
    return-void
.end method

.method private copyFieldsFrom(Lorg/jivesoftware/smackx/packet/VCard;)V
    .locals 7
    .parameter "result"

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 354
    new-instance p1, Lorg/jivesoftware/smackx/packet/VCard;

    .end local p1
    invoke-direct {p1}, Lorg/jivesoftware/smackx/packet/VCard;-><init>()V

    .line 357
    .restart local p1
    :cond_0
    const-class v3, Lorg/jivesoftware/smackx/packet/VCard;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 358
    .local v2, fields:[Ljava/lang/reflect/Field;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 369
    return-void

    .line 358
    :cond_1
    aget-object v1, v2, v3

    .line 359
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lorg/jivesoftware/smackx/packet/VCard;

    if-ne v5, v6, :cond_2

    .line 360
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 362
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 363
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "This cannot happen:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private doLoad(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V
    .locals 10
    .parameter "connection"
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 373
    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v5}, Lorg/jivesoftware/smackx/packet/VCard;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 375
    new-instance v5, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/VCard;->getPacketID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 376
    .local v1, collector:Lorg/jivesoftware/smack/PacketCollector;
    invoke-virtual {p1, p0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 378
    const/4 v4, 0x0

    .line 381
    .local v4, result:Lorg/jivesoftware/smackx/packet/VCard;
    :try_start_0
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v5

    int-to-long v5, v5

    .line 380
    invoke-virtual {v1, v5, v6}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/jivesoftware/smackx/packet/VCard;

    move-object v4, v0

    .line 383
    if-nez v4, :cond_1

    .line 384
    const-string v3, "Timeout getting VCard information"

    .line 385
    .local v3, errorMessage:Ljava/lang/String;
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    const-string v6, "Timeout getting VCard information"

    new-instance v7, Lorg/jivesoftware/smack/packet/XMPPError;

    .line 386
    sget-object v8, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->request_timeout:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v9, "Timeout getting VCard information"

    invoke-direct {v7, v8, v9}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    .line 385
    invoke-direct {v5, v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v3           #errorMessage:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 392
    .local v2, e:Ljava/lang/ClassCastException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "No VCard for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 395
    .end local v2           #e:Ljava/lang/ClassCastException;
    :cond_0
    invoke-direct {p0, v4}, Lorg/jivesoftware/smackx/packet/VCard;->copyFieldsFrom(Lorg/jivesoftware/smackx/packet/VCard;)V

    .line 396
    return-void

    .line 388
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/VCard;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 389
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/VCard;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static getBytes(Ljava/net/URL;)[B
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->getFileBytes(Ljava/io/File;)[B

    move-result-object v2

    .line 277
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getFileBytes(Ljava/io/File;)[B
    .locals 7
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 283
    .local v0, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 284
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v3, v5

    .line 285
    .local v3, bytes:I
    new-array v2, v3, [B

    .line 286
    .local v2, buffer:[B
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    .line 287
    .local v4, readBytes:I
    array-length v5, v2

    if-eq v4, v5, :cond_1

    .line 288
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Entire file not read"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    .end local v2           #buffer:[B
    .end local v3           #bytes:I
    .end local v4           #readBytes:I
    :catchall_0
    move-exception v5

    move-object v0, v1

    .line 292
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    :goto_0
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 295
    :cond_0
    throw v5

    .line 292
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #buffer:[B
    .restart local v3       #bytes:I
    .restart local v4       #readBytes:I
    :cond_1
    if-eqz v1, :cond_2

    .line 293
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 290
    :cond_2
    return-object v2

    .line 291
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #buffer:[B
    .end local v3           #bytes:I
    .end local v4           #readBytes:I
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v5

    goto :goto_0
.end method

.method private hasContent()Z
    .locals 1

    .prologue
    .line 608
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard;->hasNameField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard;->hasOrganizationFields()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 610
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherUnescapableFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->homeAddr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 611
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->homePhones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->workAddr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 612
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->workPhones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 608
    goto :goto_0
.end method

.method private hasNameField()Z
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasOrganizationFields()Z
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->organization:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->organizationUnit:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateFN()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 908
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 909
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 911
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 912
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 914
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 915
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    :cond_2
    const-string v1, "FN"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 400
    if-ne p0, p1, :cond_1

    .line 401
    const/4 v1, 0x1

    .line 450
    :cond_0
    :goto_0
    return v1

    .line 403
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 407
    check-cast v0, Lorg/jivesoftware/smackx/packet/VCard;

    .line 409
    .local v0, vCard:Lorg/jivesoftware/smackx/packet/VCard;
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    :cond_2
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    :cond_3
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    :cond_4
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->homeAddr:Ljava/util/Map;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->homeAddr:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->homePhones:Ljava/util/Map;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->homePhones:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    :cond_5
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    :cond_6
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->organization:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->organization:Ljava/lang/String;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->organization:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    :cond_7
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->organizationUnit:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->organizationUnit:Ljava/lang/String;

    .line 440
    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->organizationUnit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    :cond_8
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->workAddr:Ljava/util/Map;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->workAddr:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->workPhones:Ljava/util/Map;

    iget-object v2, v0, Lorg/jivesoftware/smackx/packet/VCard;->workPhones:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    .line 410
    :cond_9
    iget-object v2, v0, Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 414
    :cond_a
    iget-object v2, v0, Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto/16 :goto_0

    .line 418
    :cond_b
    iget-object v2, v0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto/16 :goto_0

    .line 428
    :cond_c
    iget-object v2, v0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto/16 :goto_0

    .line 432
    :cond_d
    iget-object v2, v0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    if-eqz v2, :cond_6

    goto/16 :goto_0

    .line 436
    :cond_e
    iget-object v2, v0, Lorg/jivesoftware/smackx/packet/VCard;->organization:Ljava/lang/String;

    if-eqz v2, :cond_7

    goto/16 :goto_0

    .line 441
    :cond_f
    iget-object v2, v0, Lorg/jivesoftware/smackx/packet/VCard;->organizationUnit:Ljava/lang/String;

    if-eqz v2, :cond_8

    goto/16 :goto_0
.end method

.method public getAddressFieldHome(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "addrField"

    .prologue
    .line 462
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->homeAddr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAddressFieldWork(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "addrField"

    .prologue
    .line 473
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->workAddr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()[B
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->avatar:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 501
    const/4 v0, 0x0

    .line 503
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->avatar:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getAvatarHash()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 512
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/VCard;->getAvatar()[B

    move-result-object v0

    .line 513
    .local v0, bytes:[B
    if-nez v0, :cond_0

    .line 526
    :goto_0
    return-object v3

    .line 519
    :cond_0
    :try_start_0
    const-string v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 525
    .local v1, digest:Ljava/security/MessageDigest;
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 526
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 520
    .end local v1           #digest:Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 521
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    invoke-direct {v1, p0, v0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;-><init>(Lorg/jivesoftware/smackx/packet/VCard;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->write()V

    .line 533
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEmailHome()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailWork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "field"

    .prologue
    .line 553
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getJabberId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    const-string v1, "JABBERID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    const-string v1, "NICKNAME"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->organization:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizationUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->organizationUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneHome(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 592
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->homePhones:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneWork(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 603
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->workPhones:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 618
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->homePhones:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v0

    .line 619
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1d

    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/VCard;->workPhones:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 620
    mul-int/lit8 v1, v0, 0x1d

    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/VCard;->homeAddr:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 621
    mul-int/lit8 v1, v0, 0x1d

    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/VCard;->workAddr:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 622
    mul-int/lit8 v3, v0, 0x1d

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 623
    mul-int/lit8 v3, v0, 0x1d

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 624
    mul-int/lit8 v3, v0, 0x1d

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v3, v1

    .line 625
    mul-int/lit8 v3, v0, 0x1d

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int v0, v3, v1

    .line 626
    mul-int/lit8 v3, v0, 0x1d

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int v0, v3, v1

    .line 627
    mul-int/lit8 v3, v0, 0x1d

    .line 628
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->organization:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->organization:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 627
    :goto_5
    add-int v0, v3, v1

    .line 629
    mul-int/lit8 v1, v0, 0x1d

    .line 630
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/VCard;->organizationUnit:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->organizationUnit:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 629
    :cond_0
    add-int v0, v1, v2

    .line 631
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 632
    return v0

    :cond_1
    move v1, v2

    .line 622
    goto :goto_0

    :cond_2
    move v1, v2

    .line 623
    goto :goto_1

    :cond_3
    move v1, v2

    .line 624
    goto :goto_2

    :cond_4
    move v1, v2

    .line 625
    goto :goto_3

    :cond_5
    move v1, v2

    .line 626
    goto :goto_4

    :cond_6
    move v1, v2

    .line 628
    goto :goto_5
.end method

.method public load(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 648
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/packet/VCard;->checkAuthenticated(Lorg/jivesoftware/smack/Connection;Z)V

    .line 650
    invoke-virtual {p1}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/VCard;->setFrom(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p1}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/packet/VCard;->doLoad(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public load(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V
    .locals 1
    .parameter "connection"
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 659
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/packet/VCard;->checkAuthenticated(Lorg/jivesoftware/smack/Connection;Z)V

    .line 661
    invoke-virtual {p0, p2}, Lorg/jivesoftware/smackx/packet/VCard;->setTo(Ljava/lang/String;)V

    .line 662
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/packet/VCard;->doLoad(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method public save(Lorg/jivesoftware/smack/Connection;)V
    .locals 4
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 679
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lorg/jivesoftware/smackx/packet/VCard;->checkAuthenticated(Lorg/jivesoftware/smack/Connection;Z)V

    .line 681
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smackx/packet/VCard;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 682
    invoke-virtual {p1}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smackx/packet/VCard;->setFrom(Ljava/lang/String;)V

    .line 684
    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/VCard;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 685
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    invoke-virtual {p1, p0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 688
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 687
    invoke-virtual {v0, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .line 691
    .local v1, response:Lorg/jivesoftware/smack/packet/Packet;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 692
    if-nez v1, :cond_0

    .line 693
    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    const-string v3, "No response from server on status set."

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 695
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 696
    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v2

    .line 698
    :cond_1
    return-void
.end method

.method public setAddressFieldHome(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "addrField"
    .parameter "value"

    .prologue
    .line 708
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->homeAddr:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    return-void
.end method

.method public setAddressFieldWork(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "addrField"
    .parameter "value"

    .prologue
    .line 719
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->workAddr:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    return-void
.end method

.method public setAvatar(Ljava/net/URL;)V
    .locals 3
    .parameter "avatarURL"

    .prologue
    .line 773
    const/4 v2, 0x0

    new-array v0, v2, [B

    .line 775
    .local v0, bytes:[B
    :try_start_0
    invoke-static {p1}, Lorg/jivesoftware/smackx/packet/VCard;->getBytes(Ljava/net/URL;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 780
    :goto_0
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/VCard;->setAvatar([B)V

    .line 781
    return-void

    .line 776
    :catch_0
    move-exception v1

    .line 777
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAvatar([B)V
    .locals 4
    .parameter "bytes"

    .prologue
    .line 729
    if-nez p1, :cond_0

    .line 731
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherUnescapableFields:Ljava/util/Map;

    const-string v2, "PHOTO"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    :goto_0
    return-void

    .line 736
    :cond_0
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, encodedImage:Ljava/lang/String;
    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->avatar:Ljava/lang/String;

    .line 739
    const-string v1, "PHOTO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<TYPE>image/jpeg</TYPE><BINVAL>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 740
    const-string v3, "</BINVAL>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 739
    invoke-virtual {p0, v1, v2, v3}, Lorg/jivesoftware/smackx/packet/VCard;->setField(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setAvatar([BLjava/lang/String;)V
    .locals 4
    .parameter "bytes"
    .parameter "mimeType"

    .prologue
    .line 752
    if-nez p1, :cond_0

    .line 754
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherUnescapableFields:Ljava/util/Map;

    const-string v2, "PHOTO"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    :goto_0
    return-void

    .line 759
    :cond_0
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, encodedImage:Ljava/lang/String;
    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->avatar:Ljava/lang/String;

    .line 762
    const-string v1, "PHOTO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<TYPE>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</TYPE><BINVAL>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 763
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</BINVAL>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 762
    invoke-virtual {p0, v1, v2, v3}, Lorg/jivesoftware/smackx/packet/VCard;->setField(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setEmailHome(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 784
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;

    .line 785
    return-void
.end method

.method public setEmailWork(Ljava/lang/String;)V
    .locals 0
    .parameter "emailWork"

    .prologue
    .line 788
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;

    .line 789
    return-void
.end method

.method public setEncodedImage(Ljava/lang/String;)V
    .locals 0
    .parameter "encodedAvatar"

    .prologue
    .line 799
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard;->avatar:Ljava/lang/String;

    .line 800
    return-void
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 812
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/packet/VCard;->setField(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 813
    return-void
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "field"
    .parameter "value"
    .parameter "isUnescapable"

    .prologue
    .line 828
    if-nez p3, :cond_0

    .line 829
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    :goto_0
    return-void

    .line 831
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherUnescapableFields:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .parameter "firstName"

    .prologue
    .line 836
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    .line 838
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard;->updateFN()V

    .line 839
    return-void
.end method

.method public setJabberId(Ljava/lang/String;)V
    .locals 2
    .parameter "jabberId"

    .prologue
    .line 842
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    const-string v1, "JABBERID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .parameter "lastName"

    .prologue
    .line 846
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    .line 848
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard;->updateFN()V

    .line 849
    return-void
.end method

.method public setMiddleName(Ljava/lang/String;)V
    .locals 0
    .parameter "middleName"

    .prologue
    .line 852
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    .line 854
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard;->updateFN()V

    .line 855
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 2
    .parameter "nickName"

    .prologue
    .line 858
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    const-string v1, "NICKNAME"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    return-void
.end method

.method public setOrganization(Ljava/lang/String;)V
    .locals 0
    .parameter "organization"

    .prologue
    .line 862
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard;->organization:Ljava/lang/String;

    .line 863
    return-void
.end method

.method public setOrganizationUnit(Ljava/lang/String;)V
    .locals 0
    .parameter "organizationUnit"

    .prologue
    .line 868
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard;->organizationUnit:Ljava/lang/String;

    .line 869
    return-void
.end method

.method public setPhoneHome(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "phoneType"
    .parameter "phoneNum"

    .prologue
    .line 881
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->homePhones:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    return-void
.end method

.method public setPhoneWork(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "phoneType"
    .parameter "phoneNum"

    .prologue
    .line 894
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->workPhones:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/VCard;->getChildElementXML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
