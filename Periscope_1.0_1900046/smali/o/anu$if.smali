.class public final enum Lo/anu$if;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/anu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/anu$if;>;"
    }
.end annotation


# static fields
.field public static final enum bOn:Lo/anu$if;

.field public static final enum bOo:Lo/anu$if;

.field public static final enum bOp:Lo/anu$if;

.field private static final synthetic bOq:[Lo/anu$if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lo/anu$if;

    const-string v1, "User"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/anu$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/anu$if;->bOn:Lo/anu$if;

    new-instance v0, Lo/anu$if;

    const-string v1, "System"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/anu$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/anu$if;->bOo:Lo/anu$if;

    new-instance v0, Lo/anu$if;

    const-string v1, "Broadcaster"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/anu$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/anu$if;->bOp:Lo/anu$if;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lo/anu$if;

    sget-object v1, Lo/anu$if;->bOn:Lo/anu$if;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/anu$if;->bOo:Lo/anu$if;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/anu$if;->bOp:Lo/anu$if;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lo/anu$if;->bOq:[Lo/anu$if;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/anu$if;
    .locals 1

    .line 42
    const-class v0, Lo/anu$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/anu$if;

    return-object v0
.end method

.method public static values()[Lo/anu$if;
    .locals 1

    .line 42
    sget-object v0, Lo/anu$if;->bOq:[Lo/anu$if;

    invoke-virtual {v0}, [Lo/anu$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/anu$if;

    return-object v0
.end method
