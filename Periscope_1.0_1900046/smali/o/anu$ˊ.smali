.class public final enum Lo/anu$ˊ;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/anu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "\u02ca"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/anu$\u02ca;>;"
    }
.end annotation


# static fields
.field public static final enum bOr:Lo/anu$ˊ;

.field public static final enum bOs:Lo/anu$ˊ;

.field public static final enum bOt:Lo/anu$ˊ;

.field private static final synthetic bOu:[Lo/anu$ˊ;


# instance fields
.field public final WC:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 47
    new-instance v0, Lo/anu$ˊ;

    const-string v1, "None"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lo/anu$ˊ;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lo/anu$ˊ;->bOr:Lo/anu$ˊ;

    new-instance v0, Lo/anu$ˊ;

    const-string v1, "Heart"

    const/4 v2, 0x1

    const-wide/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3, v4}, Lo/anu$ˊ;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lo/anu$ˊ;->bOs:Lo/anu$ˊ;

    new-instance v0, Lo/anu$ˊ;

    const-string v1, "Channel"

    const/4 v2, 0x2

    const-wide/16 v3, 0x12c

    invoke-direct {v0, v1, v2, v3, v4}, Lo/anu$ˊ;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lo/anu$ˊ;->bOt:Lo/anu$ˊ;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lo/anu$ˊ;

    sget-object v1, Lo/anu$ˊ;->bOr:Lo/anu$ˊ;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/anu$ˊ;->bOs:Lo/anu$ˊ;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/anu$ˊ;->bOt:Lo/anu$ˊ;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lo/anu$ˊ;->bOu:[Lo/anu$ˊ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-wide p3, p0, Lo/anu$ˊ;->WC:J

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/anu$ˊ;
    .locals 1

    .line 46
    const-class v0, Lo/anu$ˊ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/anu$ˊ;

    return-object v0
.end method

.method public static values()[Lo/anu$ˊ;
    .locals 1

    .line 46
    sget-object v0, Lo/anu$ˊ;->bOu:[Lo/anu$ˊ;

    invoke-virtual {v0}, [Lo/anu$ˊ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/anu$ˊ;

    return-object v0
.end method
