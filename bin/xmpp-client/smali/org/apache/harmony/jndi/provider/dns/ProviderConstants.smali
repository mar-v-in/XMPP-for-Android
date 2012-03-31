.class public Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;
.super Ljava/lang/Object;
.source "ProviderConstants.java"


# static fields
.field public static final AAAA_TYPE:I = 0x1c

.field public static final AA_MASK:I = 0x400

.field public static final ANY_QCLASS:I = 0xff

.field public static final ANY_QTYPE:I = 0xff

.field public static final AXFR_QTYPE:I = 0xfc

.field public static final A_TYPE:I = 0x1

.field public static final CH_CLASS:I = 0x3

.field public static final CNAME_TYPE:I = 0x5

.field public static final CS_CLASS:I = 0x2

.field public static final DEFAULT_AUTHORITATIVE:Z = false

.field public static final DEFAULT_DNS_PORT:I = 0x35

.field public static final DEFAULT_INITIAL_TIMEOUT:I = 0x3e8

.field public static final DEFAULT_LOOKUP_ATTR_CLASS:I = 0x1

.field public static final DEFAULT_LOOKUP_ATTR_TYPE:I = 0x10

.field public static final DEFAULT_MAX_THREADS:I = 0x7

.field public static final DEFAULT_RECURSION:Z = true

.field public static final DEFAULT_TIMEOUT_RETRIES:I = 0x4

.field public static final FORMAT_ERROR:I = 0x1

.field public static final HINFO_TYPE:I = 0xd

.field public static final HS_CLASS:I = 0x4

.field public static final IN_CLASS:I = 0x1

.field public static final IQUERY:I = 0x1

.field public static final LABEL_MAX_CHARS:I = 0x3f

.field public static final MAILA_QTYPE:I = 0xfe

.field public static final MAILB_QTYPE:I = 0xfd

.field public static final MB_TYPE:I = 0x7

.field public static final MD_TYPE:I = 0x3

.field public static final MF_TYPE:I = 0x4

.field public static final MG_TYPE:I = 0x8

.field public static final MINFO_TYPE:I = 0xe

.field public static final MR_TYPE:I = 0x9

.field public static final MX_TYPE:I = 0xf

.field public static final NAME_ERROR:I = 0x3

.field public static final NAME_MAX_CHARS:I = 0xff

.field public static final NOT_IMPLEMENTED:I = 0x4

.field public static final NO_ERROR:I = 0x0

.field public static final NS_TYPE:I = 0x2

.field public static final NULL_TYPE:I = 0xa

.field public static final OPCODE_MASK:I = 0x7800

.field public static final OPCODE_SHIFT:I = 0xb

.field public static final PTR_TYPE:I = 0xc

.field public static final QR_MASK:I = 0x8000

.field public static final QR_QUERY:Z = false

.field public static final QR_RESPONSE:Z = true

.field public static final QUERY:I = 0x0

.field public static final RA_MASK:I = 0x80

.field public static final RCODE_MASK:I = 0xf

.field public static final RCODE_SHIFT:I = 0x0

.field public static final RD_MASK:I = 0x100

.field public static final REFUSED:I = 0x5

.field public static final ROOT_ZONE_NAME_OBJ:Lorg/apache/harmony/jndi/provider/dns/DNSName; = null

.field public static final SERVER_FAILURE:I = 0x2

.field public static final SOA_TYPE:I = 0x6

.field public static final SRV_TYPE:I = 0x21

.field public static final STATUS:I = 0x2

.field public static final TC_MASK:I = 0x200

.field public static final TXT_TYPE:I = 0x10

.field public static final WKS_TYPE:I = 0xb

.field public static final Z_MASK:I = 0x70

.field public static rrClassNames:[Ljava/lang/String;

.field public static rrTypeNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xff

    const/4 v7, 0x1

    const/16 v6, 0x100

    .line 127
    new-array v3, v6, [Ljava/lang/String;

    sput-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    .line 128
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v6, :cond_0

    .line 131
    sget-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    const-string v4, "A"

    aput-object v4, v3, v7

    .line 132
    sget-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    const/4 v4, 0x2

    const-string v5, "NS"

    aput-object v5, v3, v4

    .line 135
    sget-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    const/4 v4, 0x5

    const-string v5, "CNAME"

    aput-object v5, v3, v4

    .line 136
    sget-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    const/4 v4, 0x6

    const-string v5, "SOA"

    aput-object v5, v3, v4

    .line 142
    sget-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    const/16 v4, 0xc

    const-string v5, "PTR"

    aput-object v5, v3, v4

    .line 143
    sget-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    const/16 v4, 0xd

    const-string v5, "HINFO"

    aput-object v5, v3, v4

    .line 145
    sget-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    const/16 v4, 0xf

    const-string v5, "MX"

    aput-object v5, v3, v4

    .line 146
    sget-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    const/16 v4, 0x10

    const-string v5, "TXT"

    aput-object v5, v3, v4

    .line 147
    sget-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    const/16 v4, 0x1c

    const-string v5, "AAAA"

    aput-object v5, v3, v4

    .line 148
    sget-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    const/16 v4, 0x21

    const-string v5, "SRV"

    aput-object v5, v3, v4

    .line 152
    sget-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    const-string v4, "*"

    aput-object v4, v3, v8

    .line 155
    new-array v3, v6, [Ljava/lang/String;

    sput-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrClassNames:[Ljava/lang/String;

    .line 156
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v6, :cond_1

    .line 159
    sget-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrClassNames:[Ljava/lang/String;

    const-string v4, "IN"

    aput-object v4, v3, v7

    .line 160
    sget-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrClassNames:[Ljava/lang/String;

    const/4 v4, 0x4

    const-string v5, "HS"

    aput-object v5, v3, v4

    .line 161
    sget-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrClassNames:[Ljava/lang/String;

    const-string v4, "*"

    aput-object v4, v3, v8

    .line 164
    const/4 v2, 0x0

    .line 166
    .local v2, root:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    :try_start_0
    new-instance v3, Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

    invoke-direct {v3}, Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;->parse(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    move-object v2, v0
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/InvalidNameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_2
    sput-object v2, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->ROOT_ZONE_NAME_OBJ:Lorg/apache/harmony/jndi/provider/dns/DNSName;

    .line 32
    return-void

    .line 129
    .end local v2           #root:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    :cond_0
    sget-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 157
    :cond_1
    sget-object v3, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrClassNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 167
    .restart local v2       #root:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
