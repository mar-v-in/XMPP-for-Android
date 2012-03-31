.class public final enum Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;
.super Ljava/lang/Enum;
.source "MessageAttributeInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/javawi/jstun/attribute/MessageAttributeInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageAttributeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ChangeRequest:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum ChangedAddress:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum Dummy:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

.field private static final synthetic ENUM$VALUES:[Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum ErrorCode:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum MappedAddress:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum MessageIntegrity:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum Password:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum ReflectedFrom:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum ResponseAddress:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum SourceAddress:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum UnknownAttribute:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

.field public static final enum Username:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "MappedAddress"

    invoke-direct {v0, v1, v3}, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->MappedAddress:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "ResponseAddress"

    invoke-direct {v0, v1, v4}, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ResponseAddress:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "ChangeRequest"

    invoke-direct {v0, v1, v5}, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ChangeRequest:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "SourceAddress"

    invoke-direct {v0, v1, v6}, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->SourceAddress:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "ChangedAddress"

    invoke-direct {v0, v1, v7}, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ChangedAddress:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "Username"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->Username:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "Password"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->Password:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "MessageIntegrity"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->MessageIntegrity:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "ErrorCode"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ErrorCode:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "UnknownAttribute"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->UnknownAttribute:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "ReflectedFrom"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ReflectedFrom:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    new-instance v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    const-string v1, "Dummy"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->Dummy:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    .line 15
    const/16 v0, 0xc

    new-array v0, v0, [Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    sget-object v1, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->MappedAddress:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v1, v0, v3

    sget-object v1, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ResponseAddress:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v1, v0, v4

    sget-object v1, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ChangeRequest:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v1, v0, v5

    sget-object v1, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->SourceAddress:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v1, v0, v6

    sget-object v1, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ChangedAddress:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->Username:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->Password:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->MessageIntegrity:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ErrorCode:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->UnknownAttribute:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ReflectedFrom:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->Dummy:Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    aput-object v2, v0, v1

    sput-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ENUM$VALUES:[Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    return-object v0
.end method

.method public static values()[Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;->ENUM$VALUES:[Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    array-length v1, v0

    new-array v2, v1, [Lde/javawi/jstun/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
