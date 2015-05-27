.class public final enum Lo/afq$ˊ;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/afq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "\u02ca"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/afq$\u02ca;>;"
    }
.end annotation


# static fields
.field public static final enum bCP:Lo/afq$ˊ;

.field public static final enum bCQ:Lo/afq$ˊ;

.field public static final enum bCR:Lo/afq$ˊ;

.field private static final synthetic bCS:[Lo/afq$ˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 292
    new-instance v0, Lo/afq$ˊ;

    const-string v1, "Hidden"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/afq$ˊ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/afq$ˊ;->bCP:Lo/afq$ˊ;

    .line 293
    new-instance v0, Lo/afq$ˊ;

    const-string v1, "Close"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/afq$ˊ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/afq$ˊ;->bCQ:Lo/afq$ˊ;

    .line 294
    new-instance v0, Lo/afq$ˊ;

    const-string v1, "Send"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/afq$ˊ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/afq$ˊ;->bCR:Lo/afq$ˊ;

    .line 291
    const/4 v0, 0x3

    new-array v0, v0, [Lo/afq$ˊ;

    sget-object v1, Lo/afq$ˊ;->bCP:Lo/afq$ˊ;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/afq$ˊ;->bCQ:Lo/afq$ˊ;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/afq$ˊ;->bCR:Lo/afq$ˊ;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lo/afq$ˊ;->bCS:[Lo/afq$ˊ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 291
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/afq$ˊ;
    .locals 1

    .line 291
    const-class v0, Lo/afq$ˊ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/afq$ˊ;

    return-object v0
.end method

.method public static values()[Lo/afq$ˊ;
    .locals 1

    .line 291
    sget-object v0, Lo/afq$ˊ;->bCS:[Lo/afq$ˊ;

    invoke-virtual {v0}, [Lo/afq$ˊ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/afq$ˊ;

    return-object v0
.end method
