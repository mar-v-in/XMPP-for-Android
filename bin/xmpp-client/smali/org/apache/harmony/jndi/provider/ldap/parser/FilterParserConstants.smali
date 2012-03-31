.class public interface abstract Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserConstants;
.super Ljava/lang/Object;
.source "FilterParserConstants.java"


# static fields
.field public static final AND:I = 0x8

.field public static final APPROX:I = 0x10

.field public static final ASTERISK:I = 0x11

.field public static final BACKSLASH:I = 0x15

.field public static final CHAR:I = 0x17

.field public static final COLON:I = 0xc

.field public static final COLON_DN:I = 0x1

.field public static final DEFAULT:I = 0x0

.field public static final DIGIT:I = 0x12

.field public static final EOF:I = 0x0

.field public static final EQUAL:I = 0xd

.field public static final GREATER:I = 0xf

.field public static final HEX_CHAR:I = 0x2

.field public static final HYPHEN:I = 0x13

.field public static final LBRACE:I = 0x6

.field public static final LESS:I = 0xe

.field public static final LPARENT:I = 0x4

.field public static final NOHEX_CHAR:I = 0x3

.field public static final NOT:I = 0xa

.field public static final OR:I = 0x9

.field public static final PERIOD:I = 0x14

.field public static final RBRACE:I = 0x7

.field public static final RPARENT:I = 0x5

.field public static final SEMI:I = 0x16

.field public static final ZERO:I = 0xb

.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<EOF>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\":dn\""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "<HEX_CHAR>"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "<NOHEX_CHAR>"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 80
    const-string v2, "\"(\""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\")\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\"{\""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\"}\""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\"&\""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\"|\""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\"!\""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 81
    const-string v2, "\"0\""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\":\""

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\"=\""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\"<\""

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\">\""

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\"~\""

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\"*\""

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 82
    const-string v2, "<DIGIT>"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\"-\""

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\".\""

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\"\\\\\""

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\";\""

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "<CHAR>"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 83
    const-string v2, "\"\\n\""

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\"\\u0085\""

    aput-object v2, v0, v1

    .line 79
    sput-object v0, Lorg/apache/harmony/jndi/provider/ldap/parser/FilterParserConstants;->tokenImage:[Ljava/lang/String;

    .line 24
    return-void
.end method
