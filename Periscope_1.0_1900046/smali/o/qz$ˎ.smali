.class public final enum Lo/qz$ˎ;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/qz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "\u02ce"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/qz$\u02ce;>;"
    }
.end annotation


# static fields
.field public static final enum WX:Lo/qz$ˎ;

.field public static final enum WY:Lo/qz$ˎ;

.field public static final enum WZ:Lo/qz$ˎ;

.field private static final synthetic Xa:[Lo/qz$ˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 263
    new-instance v0, Lo/qz$ˎ;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/qz$ˎ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/qz$ˎ;->WX:Lo/qz$ˎ;

    .line 267
    new-instance v0, Lo/qz$ˎ;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/qz$ˎ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/qz$ˎ;->WY:Lo/qz$ˎ;

    .line 271
    new-instance v0, Lo/qz$ˎ;

    const-string v1, "FINISHED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/qz$ˎ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/qz$ˎ;->WZ:Lo/qz$ˎ;

    .line 259
    const/4 v0, 0x3

    new-array v0, v0, [Lo/qz$ˎ;

    sget-object v1, Lo/qz$ˎ;->WX:Lo/qz$ˎ;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/qz$ˎ;->WY:Lo/qz$ˎ;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/qz$ˎ;->WZ:Lo/qz$ˎ;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lo/qz$ˎ;->Xa:[Lo/qz$ˎ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/qz$ˎ;
    .locals 1

    .line 259
    const-class v0, Lo/qz$ˎ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/qz$ˎ;

    return-object v0
.end method

.method public static values()[Lo/qz$ˎ;
    .locals 1

    .line 259
    sget-object v0, Lo/qz$ˎ;->Xa:[Lo/qz$ˎ;

    invoke-virtual {v0}, [Lo/qz$ˎ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/qz$ˎ;

    return-object v0
.end method
