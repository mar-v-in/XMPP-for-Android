.class public Lorg/jivesoftware/smack/util/DNSUtil;
.super Ljava/lang/Object;
.source "DNSUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    }
.end annotation


# static fields
.field private static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static context:Lorg/apache/harmony/javax/naming/directory/DirContext;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 96
    new-instance v1, Lorg/jivesoftware/smack/util/Cache;

    const/16 v2, 0x64

    const-wide/32 v3, 0x927c0

    invoke-direct {v1, v2, v3, v4}, Lorg/jivesoftware/smack/util/Cache;-><init>(IJ)V

    sput-object v1, Lorg/jivesoftware/smack/util/DNSUtil;->cache:Ljava/util/Map;

    .line 102
    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 103
    .local v0, env:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "java.naming.factory.initial"

    .line 104
    const-string v2, "com.sun.jndi.dns.DnsContextFactory"

    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v1, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;

    invoke-direct {v1, v0}, Lorg/apache/harmony/javax/naming/directory/InitialDirContext;-><init>(Ljava/util/Hashtable;)V

    sput-object v1, Lorg/jivesoftware/smack/util/DNSUtil;->context:Lorg/apache/harmony/javax/naming/directory/DirContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveXMPPDomain(Ljava/lang/String;)Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    .locals 24
    .parameter "domain"

    .prologue
    .line 138
    sget-object v18, Lorg/jivesoftware/smack/util/DNSUtil;->context:Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-nez v18, :cond_1

    .line 139
    new-instance v3, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    const/16 v18, 0x1466

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v3, v0, v1, v2}, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;-><init>(Ljava/lang/String;ILorg/jivesoftware/smack/util/DNSUtil$HostAddress;)V

    .line 199
    :cond_0
    :goto_0
    return-object v3

    .line 141
    :cond_1
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "c"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 143
    .local v10, key:Ljava/lang/String;
    sget-object v18, Lorg/jivesoftware/smack/util/DNSUtil;->cache:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 144
    sget-object v18, Lorg/jivesoftware/smack/util/DNSUtil;->cache:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    .line 145
    .local v3, address:Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    if-nez v3, :cond_0

    .line 149
    .end local v3           #address:Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    :cond_2
    move-object/from16 v4, p0

    .line 150
    .local v4, bestHost:Ljava/lang/String;
    const/16 v5, 0x1466

    .line 151
    .local v5, bestPort:I
    const/4 v6, 0x0

    .line 152
    .local v6, bestPriority:I
    const/4 v7, 0x0

    .line 154
    .local v7, bestWeight:I
    :try_start_0
    sget-object v18, Lorg/jivesoftware/smack/util/DNSUtil;->context:Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 155
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "_xmpp-client._tcp."

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "SRV"

    aput-object v22, v20, v21

    .line 154
    invoke-interface/range {v18 .. v20}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v8

    .line 156
    .local v8, dnsLookup:Lorg/apache/harmony/javax/naming/directory/Attributes;
    const-string v18, "SRV"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v13

    .line 157
    .local v13, srvAttribute:Lorg/apache/harmony/javax/naming/directory/Attribute;
    invoke-interface {v13}, Lorg/apache/harmony/javax/naming/directory/Attribute;->getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;

    move-result-object v16

    .line 158
    .local v16, srvRecords:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->hasMore()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    if-nez v18, :cond_5

    .line 193
    .end local v8           #dnsLookup:Lorg/apache/harmony/javax/naming/directory/Attributes;
    .end local v13           #srvAttribute:Lorg/apache/harmony/javax/naming/directory/Attribute;
    .end local v16           #srvRecords:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :goto_2
    const-string v18, "."

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 194
    const/16 v18, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 196
    :cond_4
    new-instance v3, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v3, v4, v5, v0}, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;-><init>(Ljava/lang/String;ILorg/jivesoftware/smack/util/DNSUtil$HostAddress;)V

    .line 198
    .restart local v3       #address:Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    sget-object v18, Lorg/jivesoftware/smack/util/DNSUtil;->cache:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 159
    .end local v3           #address:Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    .restart local v8       #dnsLookup:Lorg/apache/harmony/javax/naming/directory/Attributes;
    .restart local v13       #srvAttribute:Lorg/apache/harmony/javax/naming/directory/Attribute;
    .restart local v16       #srvRecords:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    :cond_5
    :try_start_1
    invoke-interface/range {v16 .. v16}, Lorg/apache/harmony/javax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 160
    .local v14, srvRecord:Ljava/lang/String;
    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 162
    .local v15, srvRecordEntries:[Ljava/lang/String;
    array-length v0, v15

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x4

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 164
    .local v12, priority:I
    array-length v0, v15

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x2

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 166
    .local v11, port:I
    array-length v0, v15

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x3

    aget-object v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 167
    .local v17, weight:I
    array-length v0, v15

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget-object v9, v15, v18

    .line 170
    .local v9, host:Ljava/lang/String;
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static {}, Ljava/lang/Math;->random()D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v20

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    .line 172
    if-eqz v6, :cond_6

    if-ge v12, v6, :cond_7

    .line 174
    :cond_6
    move v6, v12

    .line 175
    move/from16 v7, v17

    .line 176
    move-object v4, v9

    .line 177
    move v5, v11

    goto/16 :goto_1

    .line 178
    :cond_7
    if-ne v12, v6, :cond_3

    .line 182
    move/from16 v0, v17

    if-le v0, v7, :cond_3

    .line 183
    move/from16 v7, v17

    .line 184
    move-object v4, v9

    .line 185
    move v5, v11

    goto/16 :goto_1

    .line 189
    .end local v8           #dnsLookup:Lorg/apache/harmony/javax/naming/directory/Attributes;
    .end local v9           #host:Ljava/lang/String;
    .end local v11           #port:I
    .end local v12           #priority:I
    .end local v13           #srvAttribute:Lorg/apache/harmony/javax/naming/directory/Attribute;
    .end local v14           #srvRecord:Ljava/lang/String;
    .end local v15           #srvRecordEntries:[Ljava/lang/String;
    .end local v16           #srvRecords:Lorg/apache/harmony/javax/naming/NamingEnumeration;,"Lorg/apache/harmony/javax/naming/NamingEnumeration<*>;"
    .end local v17           #weight:I
    :catch_0
    move-exception v18

    goto/16 :goto_2
.end method

.method public static resolveXMPPServerDomain(Ljava/lang/String;)Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    .locals 15
    .parameter "domain"

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 223
    sget-object v8, Lorg/jivesoftware/smack/util/DNSUtil;->context:Lorg/apache/harmony/javax/naming/directory/DirContext;

    if-nez v8, :cond_1

    .line 224
    new-instance v0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    const/16 v8, 0x1495

    invoke-direct {v0, p0, v8, v14}, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;-><init>(Ljava/lang/String;ILorg/jivesoftware/smack/util/DNSUtil$HostAddress;)V

    .line 265
    :cond_0
    :goto_0
    return-object v0

    .line 226
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "s"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, key:Ljava/lang/String;
    sget-object v8, Lorg/jivesoftware/smack/util/DNSUtil;->cache:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 229
    sget-object v8, Lorg/jivesoftware/smack/util/DNSUtil;->cache:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    .line 230
    .local v0, address:Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    if-nez v0, :cond_0

    .line 234
    .end local v0           #address:Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    :cond_2
    move-object v3, p0

    .line 235
    .local v3, host:Ljava/lang/String;
    const/16 v5, 0x1495

    .line 237
    .local v5, port:I
    :try_start_0
    sget-object v8, Lorg/jivesoftware/smack/util/DNSUtil;->context:Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 238
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_xmpp-server._tcp."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "SRV"

    aput-object v12, v10, v11

    .line 237
    invoke-interface {v8, v9, v10}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v1

    .line 239
    .local v1, dnsLookup:Lorg/apache/harmony/javax/naming/directory/Attributes;
    const-string v8, "SRV"

    invoke-interface {v1, v8}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/harmony/javax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 240
    .local v6, srvRecord:Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 242
    .local v7, srvRecordEntries:[Ljava/lang/String;
    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 243
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-object v3, v7, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v1           #dnsLookup:Lorg/apache/harmony/javax/naming/directory/Attributes;
    .end local v6           #srvRecord:Ljava/lang/String;
    .end local v7           #srvRecordEntries:[Ljava/lang/String;
    :goto_1
    const-string v8, "."

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 260
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 262
    :cond_3
    new-instance v0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    invoke-direct {v0, v3, v5, v14}, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;-><init>(Ljava/lang/String;ILorg/jivesoftware/smack/util/DNSUtil$HostAddress;)V

    .line 264
    .restart local v0       #address:Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    sget-object v8, Lorg/jivesoftware/smack/util/DNSUtil;->cache:Ljava/util/Map;

    invoke-interface {v8, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 244
    .end local v0           #address:Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    :catch_0
    move-exception v2

    .line 247
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v8, Lorg/jivesoftware/smack/util/DNSUtil;->context:Lorg/apache/harmony/javax/naming/directory/DirContext;

    .line 248
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_jabber._tcp."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "SRV"

    aput-object v12, v10, v11

    .line 247
    invoke-interface {v8, v9, v10}, Lorg/apache/harmony/javax/naming/directory/DirContext;->getAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attributes;

    move-result-object v1

    .line 249
    .restart local v1       #dnsLookup:Lorg/apache/harmony/javax/naming/directory/Attributes;
    const-string v8, "SRV"

    invoke-interface {v1, v8}, Lorg/apache/harmony/javax/naming/directory/Attributes;->get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/harmony/javax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 250
    .restart local v6       #srvRecord:Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 252
    .restart local v7       #srvRecordEntries:[Ljava/lang/String;
    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 253
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-object v3, v7, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 254
    .end local v1           #dnsLookup:Lorg/apache/harmony/javax/naming/directory/Attributes;
    .end local v6           #srvRecord:Ljava/lang/String;
    .end local v7           #srvRecordEntries:[Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_1
.end method
