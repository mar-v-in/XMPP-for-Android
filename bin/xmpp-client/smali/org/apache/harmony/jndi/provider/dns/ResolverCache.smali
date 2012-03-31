.class Lorg/apache/harmony/jndi/provider/dns/ResolverCache;
.super Ljava/lang/Object;
.source "ResolverCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;
    }
.end annotation


# static fields
.field private static instance:Lorg/apache/harmony/jndi/provider/dns/ResolverCache;


# instance fields
.field names:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/harmony/jndi/provider/dns/ResolverCache;->instance:Lorg/apache/harmony/jndi/provider/dns/ResolverCache;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/ResolverCache;->names:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/ResolverCache;->names:Ljava/util/HashMap;

    .line 96
    return-void
.end method

.method static getInstance()Lorg/apache/harmony/jndi/provider/dns/ResolverCache;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lorg/apache/harmony/jndi/provider/dns/ResolverCache;->instance:Lorg/apache/harmony/jndi/provider/dns/ResolverCache;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lorg/apache/harmony/jndi/provider/dns/ResolverCache;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/dns/ResolverCache;-><init>()V

    sput-object v0, Lorg/apache/harmony/jndi/provider/dns/ResolverCache;->instance:Lorg/apache/harmony/jndi/provider/dns/ResolverCache;

    .line 87
    :cond_0
    sget-object v0, Lorg/apache/harmony/jndi/provider/dns/ResolverCache;->instance:Lorg/apache/harmony/jndi/provider/dns/ResolverCache;

    return-object v0
.end method


# virtual methods
.method declared-synchronized clear()V
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/ResolverCache;->names:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get(Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;)Ljava/util/Enumeration;
    .locals 14
    .parameter "question"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0xff

    .line 114
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, name:Ljava/lang/String;
    iget-object v9, p0, Lorg/apache/harmony/jndi/provider/dns/ResolverCache;->names:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Vector;

    .line 116
    .local v8, vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;>;"
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQClass()I

    move-result v5

    .line 117
    .local v5, qClass:I
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQType()I

    move-result v6

    .line 118
    .local v6, qType:I
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 120
    .local v7, resVect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    if-eqz v8, :cond_0

    .line 121
    const/4 v2, 0x0

    .local v2, i:I
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    if-lt v3, v9, :cond_1

    .line 141
    .end local v3           #i:I
    :cond_0
    invoke-virtual {v7}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    monitor-exit p0

    return-object v9

    .line 122
    .restart local v3       #i:I
    :cond_1
    :try_start_1
    invoke-virtual {v8, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;

    .line 123
    .local v0, curEntry:Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;->getRR()Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    move-result-object v1

    .line 125
    .local v1, curRR:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;->getBestBefore()J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_2

    .line 127
    add-int/lit8 v2, v3, -0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v8, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 121
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 130
    :cond_2
    if-eq v5, v13, :cond_5

    .line 131
    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRClass()I

    move-result v9

    if-eq v5, v9, :cond_3

    move v2, v3

    .line 132
    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 134
    .end local v2           #i:I
    .restart local v3       #i:I
    :cond_3
    if-eq v6, v13, :cond_5

    .line 135
    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRType()I

    move-result v9

    if-eq v6, v9, :cond_4

    move v2, v3

    .line 136
    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 138
    .end local v2           #i:I
    .restart local v3       #i:I
    :cond_4
    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 114
    .end local v0           #curEntry:Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;
    .end local v1           #curRR:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    .end local v2           #i:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #qClass:I
    .end local v6           #qType:I
    .end local v7           #resVect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    .end local v8           #vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;>;"
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method declared-synchronized put(Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;)V
    .locals 13
    .parameter "record"

    .prologue
    const-wide/16 v11, 0x0

    .line 152
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, name:Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/dns/ResolverCache;->names:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Vector;

    .line 154
    .local v7, vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 155
    .local v0, curTime:J
    const/4 v2, 0x0

    .line 157
    .local v2, entry:Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;
    if-nez v7, :cond_0

    .line 158
    new-instance v7, Ljava/util/Vector;

    .end local v7           #vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;>;"
    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 159
    .restart local v7       #vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;>;"
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/dns/ResolverCache;->names:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getTtl()J

    move-result-wide v8

    const/16 v10, 0x1f

    shr-long/2addr v8, v10

    cmp-long v8, v8, v11

    if-eqz v8, :cond_1

    .line 164
    const-wide/16 v8, 0x0

    invoke-virtual {p1, v8, v9}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->setTtl(J)V

    .line 167
    :cond_1
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getTtl()J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-lez v8, :cond_2

    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2a

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 168
    new-instance v2, Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;

    .end local v2           #entry:Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getTtl()J

    move-result-wide v8

    add-long/2addr v8, v0

    invoke-direct {v2, p1, v8, v9}, Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;-><init>(Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;J)V

    .line 170
    .restart local v2       #entry:Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v5, v8, :cond_3

    .line 185
    :goto_1
    invoke-virtual {v7, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .end local v5           #i:I
    :cond_2
    monitor-exit p0

    return-void

    .line 171
    .restart local v5       #i:I
    :cond_3
    :try_start_1
    invoke-virtual {v7, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;

    .line 172
    .local v3, exEntry:Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;
    #getter for: Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;->rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    invoke-static {v3}, Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;->access$0(Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;)Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    move-result-object v4

    .line 175
    .local v4, exRec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->namesAreEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 176
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRClass()I

    move-result v8

    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRClass()I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 177
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRType()I

    move-result v8

    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRType()I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 178
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRData()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRData()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 179
    invoke-virtual {p1}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRData()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRData()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 180
    invoke-virtual {v7, v5}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 152
    .end local v0           #curTime:J
    .end local v2           #entry:Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;
    .end local v3           #exEntry:Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;
    .end local v4           #exRec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    .end local v5           #i:I
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 170
    .restart local v0       #curTime:J
    .restart local v2       #entry:Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;
    .restart local v3       #exEntry:Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;
    .restart local v4       #exRec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    .restart local v5       #i:I
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #vect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;>;"
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method
