.class public interface abstract Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserConstants;
.super Ljava/lang/Object;
.source "LdapUrlParserConstants.java"


# static fields
.field public static final CHAR:I = 0x10

.field public static final COLON:I = 0x8

.field public static final COMMA:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final DIGIT:I = 0xe

.field public static final EOF:I = 0x0

.field public static final EQUAL:I = 0xb

.field public static final EXCLAM_MARK:I = 0xa

.field public static final HEX_CHAR:I = 0xc

.field public static final NOHEX_CHAR:I = 0xd

.field public static final PERCENT:I = 0x7

.field public static final PERIOD:I = 0x9

.field public static final PRE_XTOKEN:I = 0x2

.field public static final QUESTION_MARK:I = 0x5

.field public static final SCHEME:I = 0x1

.field public static final SCOPE:I = 0x3

.field public static final SLASH:I = 0x6

.field public static final ZERO:I = 0xf

.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<EOF>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "<SCHEME>"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "<PRE_XTOKEN>"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "<SCOPE>"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 66
    const-string v2, "\",\""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\"?\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\"/\""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\"%\""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\":\""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\".\""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\"!\""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 67
    const-string v2, "\"=\""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "<HEX_CHAR>"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "<NOHEX_CHAR>"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "<DIGIT>"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\"0\""

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 68
    const-string v2, "<CHAR>"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\"\\n\""

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\"\\u0085\""

    aput-object v2, v0, v1

    .line 65
    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/parser/LdapUrlParserConstants;->tokenImage:[Ljava/lang/String;

    .line 24
    return-void
.end method
