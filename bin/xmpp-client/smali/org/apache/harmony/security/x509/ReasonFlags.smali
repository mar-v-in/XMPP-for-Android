.class public Lorg/apache/harmony/security/x509/ReasonFlags;
.super Ljava/lang/Object;
.source "ReasonFlags.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1BitString;

.field static final REASONS:[Ljava/lang/String;


# instance fields
.field private final flags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unused"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 56
    const-string v2, "keyCompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 57
    const-string v2, "cACompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 58
    const-string v2, "affiliationChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 59
    const-string v2, "superseded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 60
    const-string v2, "cessationOfOperation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 61
    const-string v2, "certificateHold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 62
    const-string v2, "privilegeWithdrawn"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 63
    const-string v2, "aACompromise"

    aput-object v2, v0, v1

    .line 55
    sput-object v0, Lorg/apache/harmony/security/x509/ReasonFlags;->REASONS:[Ljava/lang/String;

    .line 72
    new-instance v0, Lorg/apache/harmony/security/x509/ReasonFlags$1;

    .line 73
    sget-object v1, Lorg/apache/harmony/security/x509/ReasonFlags;->REASONS:[Ljava/lang/String;

    array-length v1, v1

    .line 72
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ReasonFlags$1;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/x509/ReasonFlags;->ASN1:Lorg/apache/harmony/security/asn1/ASN1BitString;

    .line 50
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 0
    .parameter "flags"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/apache/harmony/security/x509/ReasonFlags;->flags:[Z

    .line 91
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/security/x509/ReasonFlags;)[Z
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ReasonFlags;->flags:[Z

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v1, "ReasonFlags [\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/ReasonFlags;->flags:[Z

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    const-string v1, "]\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/ReasonFlags;->flags:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 103
    sget-object v2, Lorg/apache/harmony/security/x509/ReasonFlags;->REASONS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
