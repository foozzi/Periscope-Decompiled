.class public enum Lo/ΐ$ˋ;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ΐ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "\u02cb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/\u1fd3$\u02cb;>;"
    }
.end annotation


# static fields
.field public static final enum jm:Lo/ΐ$ˋ;

.field public static final enum jn:Lo/ΐ$ˋ;

.field public static final enum jo:Lo/ΐ$ˋ;

.field private static final synthetic jp:[Lo/ΐ$ˋ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lo/ΐ$ˋ;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/ΐ$ˋ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ΐ$ˋ;->jm:Lo/ΐ$ˋ;

    .line 33
    new-instance v0, Lo/ィ;

    const-string v1, "LOG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/ィ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ΐ$ˋ;->jn:Lo/ΐ$ˋ;

    .line 42
    new-instance v0, Lo/ךּ;

    const-string v1, "THROW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/ךּ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ΐ$ˋ;->jo:Lo/ΐ$ˋ;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lo/ΐ$ˋ;

    sget-object v1, Lo/ΐ$ˋ;->jm:Lo/ΐ$ˋ;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/ΐ$ˋ;->jn:Lo/ΐ$ˋ;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/ΐ$ˋ;->jo:Lo/ΐ$ˋ;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lo/ΐ$ˋ;->jp:[Lo/ΐ$ˋ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILo/ΐ$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lo/ΐ$ˋ;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/ΐ$ˋ;
    .locals 1

    .line 29
    const-class v0, Lo/ΐ$ˋ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/ΐ$ˋ;

    return-object v0
.end method

.method public static values()[Lo/ΐ$ˋ;
    .locals 1

    .line 29
    sget-object v0, Lo/ΐ$ˋ;->jp:[Lo/ΐ$ˋ;

    invoke-virtual {v0}, [Lo/ΐ$ˋ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/ΐ$ˋ;

    return-object v0
.end method


# virtual methods
.method protected ˊ(Ljava/lang/Throwable;)V
    .locals 0

    .line 52
    return-void
.end method
