.class public final enum Lo/aeh$ˏ$if;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aeh$ˏ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/aeh$\u02cf$if;>;"
    }
.end annotation


# static fields
.field public static final enum bAi:Lo/aeh$ˏ$if;

.field public static final enum bAj:Lo/aeh$ˏ$if;

.field private static final synthetic bAk:[Lo/aeh$ˏ$if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 107
    new-instance v0, Lo/aeh$ˏ$if;

    const-string v1, "Live"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/aeh$ˏ$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/aeh$ˏ$if;->bAi:Lo/aeh$ˏ$if;

    .line 108
    new-instance v0, Lo/aeh$ˏ$if;

    const-string v1, "Replay"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/aeh$ˏ$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/aeh$ˏ$if;->bAj:Lo/aeh$ˏ$if;

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [Lo/aeh$ˏ$if;

    sget-object v1, Lo/aeh$ˏ$if;->bAi:Lo/aeh$ˏ$if;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/aeh$ˏ$if;->bAj:Lo/aeh$ˏ$if;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lo/aeh$ˏ$if;->bAk:[Lo/aeh$ˏ$if;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/aeh$ˏ$if;
    .locals 1

    .line 106
    const-class v0, Lo/aeh$ˏ$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/aeh$ˏ$if;

    return-object v0
.end method

.method public static values()[Lo/aeh$ˏ$if;
    .locals 1

    .line 106
    sget-object v0, Lo/aeh$ˏ$if;->bAk:[Lo/aeh$ˏ$if;

    invoke-virtual {v0}, [Lo/aeh$ˏ$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/aeh$ˏ$if;

    return-object v0
.end method
