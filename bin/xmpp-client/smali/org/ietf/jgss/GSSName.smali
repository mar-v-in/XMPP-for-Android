.class public interface abstract Lorg/ietf/jgss/GSSName;
.super Ljava/lang/Object;
.source "GSSName.java"


# static fields
.field public static final NT_ANONYMOUS:Lorg/ietf/jgss/Oid;

.field public static final NT_EXPORT_NAME:Lorg/ietf/jgss/Oid;

.field public static final NT_HOSTBASED_SERVICE:Lorg/ietf/jgss/Oid;

.field public static final NT_MACHINE_UID_NAME:Lorg/ietf/jgss/Oid;

.field public static final NT_STRING_UID_NAME:Lorg/ietf/jgss/Oid;

.field public static final NT_USER_NAME:Lorg/ietf/jgss/Oid;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x7

    .line 22
    new-instance v0, Lorg/ietf/jgss/Oid;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lorg/ietf/jgss/Oid;-><init>([I)V

    sput-object v0, Lorg/ietf/jgss/GSSName;->NT_ANONYMOUS:Lorg/ietf/jgss/Oid;

    .line 24
    new-instance v0, Lorg/ietf/jgss/Oid;

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lorg/ietf/jgss/Oid;-><init>([I)V

    sput-object v0, Lorg/ietf/jgss/GSSName;->NT_EXPORT_NAME:Lorg/ietf/jgss/Oid;

    .line 26
    new-instance v0, Lorg/ietf/jgss/Oid;

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lorg/ietf/jgss/Oid;-><init>([I)V

    sput-object v0, Lorg/ietf/jgss/GSSName;->NT_HOSTBASED_SERVICE:Lorg/ietf/jgss/Oid;

    .line 29
    new-instance v0, Lorg/ietf/jgss/Oid;

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Lorg/ietf/jgss/Oid;-><init>([I)V

    sput-object v0, Lorg/ietf/jgss/GSSName;->NT_MACHINE_UID_NAME:Lorg/ietf/jgss/Oid;

    .line 32
    new-instance v0, Lorg/ietf/jgss/Oid;

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    invoke-direct {v0, v1}, Lorg/ietf/jgss/Oid;-><init>([I)V

    sput-object v0, Lorg/ietf/jgss/GSSName;->NT_STRING_UID_NAME:Lorg/ietf/jgss/Oid;

    .line 35
    new-instance v0, Lorg/ietf/jgss/Oid;

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    invoke-direct {v0, v1}, Lorg/ietf/jgss/Oid;-><init>([I)V

    sput-object v0, Lorg/ietf/jgss/GSSName;->NT_USER_NAME:Lorg/ietf/jgss/Oid;

    .line 20
    return-void

    .line 22
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 24
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 26
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 29
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x48t 0x3t 0x0t 0x0t
        0x92t 0xbbt 0x1t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 32
    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x48t 0x3t 0x0t 0x0t
        0x92t 0xbbt 0x1t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 35
    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x48t 0x3t 0x0t 0x0t
        0x92t 0xbbt 0x1t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public abstract canonicalize(Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract equals(Lorg/ietf/jgss/GSSName;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract export()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract getStringNameType()Lorg/ietf/jgss/Oid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract isAnonymous()Z
.end method

.method public abstract isMN()Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
