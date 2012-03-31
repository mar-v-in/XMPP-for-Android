.class Lorg/apache/harmony/jndi/provider/dns/SList;
.super Ljava/lang/Object;
.source "SList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/jndi/provider/dns/SList$Entry;,
        Lorg/apache/harmony/jndi/provider/dns/SList$Server;
    }
.end annotation


# static fields
.field public static NETWORK_FAILURE:I

.field public static SERVER_FAILURE:I

.field public static TIMEOUT:I

.field public static UNKNOWN:I

.field private static instance:Lorg/apache/harmony/jndi/provider/dns/SList;


# instance fields
.field private final servers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/SList$Server;",
            ">;"
        }
    .end annotation
.end field

.field private final zones:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/SList$Entry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 223
    const v0, 0x7ffffffc

    sput v0, Lorg/apache/harmony/jndi/provider/dns/SList;->NETWORK_FAILURE:I

    .line 225
    const v0, 0x7ffffffd

    sput v0, Lorg/apache/harmony/jndi/provider/dns/SList;->TIMEOUT:I

    .line 227
    const v0, 0x7ffffffe

    sput v0, Lorg/apache/harmony/jndi/provider/dns/SList;->SERVER_FAILURE:I

    .line 229
    const/4 v0, 0x0

    sput v0, Lorg/apache/harmony/jndi/provider/dns/SList;->UNKNOWN:I

    .line 246
    new-instance v0, Lorg/apache/harmony/jndi/provider/dns/SList;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/dns/SList;-><init>()V

    sput-object v0, Lorg/apache/harmony/jndi/provider/dns/SList;->instance:Lorg/apache/harmony/jndi/provider/dns/SList;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->zones:Ljava/util/Hashtable;

    .line 253
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->servers:Ljava/util/Vector;

    .line 254
    return-void
.end method

.method static getInstance()Lorg/apache/harmony/jndi/provider/dns/SList;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lorg/apache/harmony/jndi/provider/dns/SList;->instance:Lorg/apache/harmony/jndi/provider/dns/SList;

    return-object v0
.end method

.method private getServerNum(Lorg/apache/harmony/jndi/provider/dns/SList$Server;)I
    .locals 2
    .parameter "server"

    .prologue
    .line 410
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->servers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->servers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 415
    :goto_0
    return v0

    .line 413
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->servers:Ljava/util/Vector;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->servers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->servers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    monitor-exit v1

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private serverAtNum(I)Lorg/apache/harmony/jndi/provider/dns/SList$Server;
    .locals 1
    .parameter "num"

    .prologue
    .line 488
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->servers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 489
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->servers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    .line 491
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method dropServer(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;)V
    .locals 6
    .parameter "zone"
    .parameter "server"

    .prologue
    .line 267
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->zones:Ljava/util/Hashtable;

    monitor-enter v4

    .line 268
    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->zones:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    .line 269
    .local v2, vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    if-eqz v2, :cond_0

    .line 270
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 267
    .end local v1           #i:I
    :cond_0
    :goto_1
    monitor-exit v4

    .line 280
    return-void

    .line 271
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;

    .line 273
    .local v0, entry:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->getServerNum()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->serverAtNum(I)Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 274
    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    .line 267
    .end local v0           #entry:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    .end local v1           #i:I
    .end local v2           #vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 270
    .restart local v0       #entry:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    .restart local v1       #i:I
    .restart local v2       #vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getBestGuess(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/jndi/provider/dns/SList$Server;
    .locals 6
    .parameter "zone"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/SList$Server;",
            "*>;)",
            "Lorg/apache/harmony/jndi/provider/dns/SList$Server;"
        }
    .end annotation

    .prologue
    .line 294
    .local p2, serversToIgnore:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Lorg/apache/harmony/jndi/provider/dns/SList$Server;*>;"
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->zones:Ljava/util/Hashtable;

    monitor-enter v4

    .line 295
    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->zones:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    .line 296
    .local v2, vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 297
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 294
    .end local v1           #i:I
    :cond_0
    monitor-exit v4

    .line 310
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 298
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;

    .line 300
    .local v0, entry:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    if-eqz p2, :cond_2

    .line 302
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->getServerNum()I

    move-result v3

    .line 301
    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->serverAtNum(I)Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->getServerNum()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->serverAtNum(I)Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    move-result-object v3

    monitor-exit v4

    goto :goto_1

    .line 294
    .end local v0           #entry:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    .end local v1           #i:I
    .end local v2           #vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getServerByIP(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/harmony/jndi/provider/dns/SList$Server;
    .locals 6
    .parameter "zone"
    .parameter "ip"
    .parameter "port"

    .prologue
    .line 325
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->zones:Ljava/util/Hashtable;

    monitor-enter v4

    .line 326
    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->zones:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    .line 327
    .local v2, vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    if-eqz v2, :cond_0

    .line 328
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 325
    .end local v1           #i:I
    :cond_0
    monitor-exit v4

    .line 339
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 329
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;

    .line 331
    .local v0, entry:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->getServerNum()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->serverAtNum(I)Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getIP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 332
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->getServerNum()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->serverAtNum(I)Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    move-result-object v3

    .line 333
    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getPort()I

    move-result v3

    .line 332
    if-ne p3, v3, :cond_2

    .line 334
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->getServerNum()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->serverAtNum(I)Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    move-result-object v3

    monitor-exit v4

    goto :goto_1

    .line 325
    .end local v0           #entry:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    .end local v1           #i:I
    .end local v2           #vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 328
    .restart local v0       #entry:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    .restart local v1       #i:I
    .restart local v2       #vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getServerByName(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/harmony/jndi/provider/dns/SList$Server;
    .locals 6
    .parameter "zone"
    .parameter "name"
    .parameter "port"

    .prologue
    .line 354
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->zones:Ljava/util/Hashtable;

    monitor-enter v4

    .line 355
    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->zones:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    .line 356
    .local v2, vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    if-eqz v2, :cond_0

    .line 357
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 354
    .end local v1           #i:I
    :cond_0
    monitor-exit v4

    .line 369
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 358
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;

    .line 361
    .local v0, entry:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->getServerNum()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->serverAtNum(I)Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getName()Ljava/lang/String;

    move-result-object v3

    .line 360
    invoke-static {p2, v3}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->namesAreEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 362
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->getServerNum()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->serverAtNum(I)Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    move-result-object v3

    .line 363
    invoke-virtual {v3}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getPort()I

    move-result v3

    .line 362
    if-ne p3, v3, :cond_2

    .line 364
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->getServerNum()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->serverAtNum(I)Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    move-result-object v3

    monitor-exit v4

    goto :goto_1

    .line 354
    .end local v0           #entry:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    .end local v1           #i:I
    .end local v2           #vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 357
    .restart local v0       #entry:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    .restart local v1       #i:I
    .restart local v2       #vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getServerByServer(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;)Lorg/apache/harmony/jndi/provider/dns/SList$Server;
    .locals 6
    .parameter "zone"
    .parameter "server"

    .prologue
    .line 385
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->zones:Ljava/util/Hashtable;

    monitor-enter v4

    .line 386
    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->zones:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    .line 388
    .local v2, vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    if-eqz v2, :cond_0

    .line 389
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 385
    .end local v1           #i:I
    :cond_0
    monitor-exit v4

    .line 397
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 390
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;

    .line 391
    .local v0, entry:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->getServerNum()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->serverAtNum(I)Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 392
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->getServerNum()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->serverAtNum(I)Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    move-result-object v3

    monitor-exit v4

    goto :goto_1

    .line 385
    .end local v0           #entry:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    .end local v1           #i:I
    .end local v2           #vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 389
    .restart local v0       #entry:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    .restart local v1       #i:I
    .restart local v2       #vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getServersByName(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/SList$Server;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 429
    .local v2, result:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Server;>;"
    if-nez p1, :cond_0

    .line 431
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "jndi.34"

    invoke-static {v4}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 433
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->servers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 441
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    return-object v3

    .line 434
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->servers:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    .line 436
    .local v0, curServ:Lorg/apache/harmony/jndi/provider/dns/SList$Server;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 437
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->namesAreEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 433
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method hasServer(Ljava/lang/String;)Z
    .locals 4
    .parameter "hostname"

    .prologue
    .line 452
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->servers:Ljava/util/Vector;

    new-instance v1, Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    const/4 v2, 0x0

    .line 453
    const/16 v3, 0x35

    invoke-direct {v1, p1, v2, v3}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 452
    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method hasServer(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;)Z
    .locals 6
    .parameter "zone"
    .parameter "server"

    .prologue
    .line 467
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->zones:Ljava/util/Hashtable;

    monitor-enter v4

    .line 468
    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->zones:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    .line 469
    .local v2, vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    if-eqz v2, :cond_0

    .line 470
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 467
    .end local v1           #i:I
    :cond_0
    monitor-exit v4

    .line 479
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 471
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;

    .line 473
    .local v0, entry:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->getServerNum()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->serverAtNum(I)Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 474
    monitor-exit v4

    const/4 v3, 0x1

    goto :goto_1

    .line 470
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    .end local v0           #entry:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    .end local v1           #i:I
    .end local v2           #vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method setServerIP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "hostname"
    .parameter "newIP"

    .prologue
    .line 506
    invoke-static {p1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, nameNorm:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->servers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 516
    :goto_1
    return-void

    .line 509
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->servers:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    .line 511
    .local v2, serv:Lorg/apache/harmony/jndi/provider/dns/SList$Server;
    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getIP()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 512
    invoke-virtual {v2, p2}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->setIP(Ljava/lang/String;)V

    goto :goto_1

    .line 508
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method updateEntry(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;I)V
    .locals 9
    .parameter "zone"
    .parameter "server"
    .parameter "responseTime"

    .prologue
    .line 532
    invoke-static {p1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 534
    .local v4, normZoneName:Ljava/lang/String;
    new-instance v2, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;

    invoke-direct {p0, p2}, Lorg/apache/harmony/jndi/provider/dns/SList;->getServerNum(Lorg/apache/harmony/jndi/provider/dns/SList$Server;)I

    move-result v6

    invoke-direct {v2, v4, v6, p3}, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;-><init>(Ljava/lang/String;II)V

    .line 537
    .local v2, entryToAdd:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->zones:Ljava/util/Hashtable;

    monitor-enter v7

    .line 538
    :try_start_0
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->zones:Ljava/util/Hashtable;

    invoke-static {v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Vector;

    .line 539
    .local v5, vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    if-nez v5, :cond_1

    .line 540
    new-instance v5, Ljava/util/Vector;

    .end local v5           #vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 541
    .restart local v5       #vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 542
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/dns/SList;->zones:Ljava/util/Hashtable;

    invoke-virtual {v6, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    :cond_0
    :goto_0
    monitor-exit v7

    .line 572
    return-void

    .line 544
    :cond_1
    const/4 v0, 0x0

    .line 547
    .local v0, added:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v3, v6, :cond_2

    .line 557
    :goto_2
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v3, v6, :cond_4

    .line 567
    :goto_4
    if-nez v0, :cond_0

    .line 568
    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 537
    .end local v0           #added:Z
    .end local v3           #i:I
    .end local v5           #vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 548
    .restart local v0       #added:Z
    .restart local v3       #i:I
    .restart local v5       #vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/SList$Entry;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;

    .line 550
    .local v1, curEntry:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->getServerNum()I

    move-result v6

    invoke-direct {p0, v6}, Lorg/apache/harmony/jndi/provider/dns/SList;->serverAtNum(I)Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    move-result-object v6

    invoke-virtual {p2, v6}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 551
    invoke-virtual {v5, v3}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_2

    .line 547
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 558
    .end local v1           #curEntry:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    :cond_4
    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;

    .line 560
    .restart local v1       #curEntry:Lorg/apache/harmony/jndi/provider/dns/SList$Entry;
    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/dns/SList$Entry;->getResponseTime()I

    move-result v6

    if-ge p3, v6, :cond_5

    .line 561
    invoke-virtual {v5, v2, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    const/4 v0, 0x1

    .line 563
    goto :goto_4

    .line 557
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method
