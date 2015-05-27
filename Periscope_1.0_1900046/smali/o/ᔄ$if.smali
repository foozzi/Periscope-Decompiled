.class final enum Lo/ᔄ$if;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᔄ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/\u1504$if;>;"
    }
.end annotation


# static fields
.field public static final enum mr:Lo/ᔄ$if;

.field public static final enum ms:Lo/ᔄ$if;

.field public static final enum mt:Lo/ᔄ$if;

.field public static final enum mu:Lo/ᔄ$if;

.field public static final enum mv:Lo/ᔄ$if;

.field public static final enum mw:Lo/ᔄ$if;

.field public static final enum mx:Lo/ᔄ$if;

.field public static final enum my:Lo/ᔄ$if;

.field private static final synthetic mz:[Lo/ᔄ$if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lo/ᔄ$if;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/ᔄ$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ᔄ$if;->mr:Lo/ᔄ$if;

    .line 44
    new-instance v0, Lo/ᔄ$if;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/ᔄ$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ᔄ$if;->ms:Lo/ᔄ$if;

    .line 46
    new-instance v0, Lo/ᔄ$if;

    const-string v1, "WAITING_FOR_SIZE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/ᔄ$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ᔄ$if;->mt:Lo/ᔄ$if;

    .line 48
    new-instance v0, Lo/ᔄ$if;

    const-string v1, "COMPLETE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lo/ᔄ$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ᔄ$if;->mu:Lo/ᔄ$if;

    .line 50
    new-instance v0, Lo/ᔄ$if;

    const-string v1, "FAILED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lo/ᔄ$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ᔄ$if;->mv:Lo/ᔄ$if;

    .line 52
    new-instance v0, Lo/ᔄ$if;

    const-string v1, "CANCELLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lo/ᔄ$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ᔄ$if;->mw:Lo/ᔄ$if;

    .line 54
    new-instance v0, Lo/ᔄ$if;

    const-string v1, "CLEARED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lo/ᔄ$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ᔄ$if;->mx:Lo/ᔄ$if;

    .line 56
    new-instance v0, Lo/ᔄ$if;

    const-string v1, "PAUSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lo/ᔄ$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ᔄ$if;->my:Lo/ᔄ$if;

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [Lo/ᔄ$if;

    sget-object v1, Lo/ᔄ$if;->mr:Lo/ᔄ$if;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/ᔄ$if;->ms:Lo/ᔄ$if;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/ᔄ$if;->mt:Lo/ᔄ$if;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/ᔄ$if;->mu:Lo/ᔄ$if;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lo/ᔄ$if;->mv:Lo/ᔄ$if;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lo/ᔄ$if;->mw:Lo/ᔄ$if;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lo/ᔄ$if;->mx:Lo/ᔄ$if;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lo/ᔄ$if;->my:Lo/ᔄ$if;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lo/ᔄ$if;->mz:[Lo/ᔄ$if;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/ᔄ$if;
    .locals 1

    .line 40
    const-class v0, Lo/ᔄ$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/ᔄ$if;

    return-object v0
.end method

.method public static values()[Lo/ᔄ$if;
    .locals 1

    .line 40
    sget-object v0, Lo/ᔄ$if;->mz:[Lo/ᔄ$if;

    invoke-virtual {v0}, [Lo/ᔄ$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/ᔄ$if;

    return-object v0
.end method
