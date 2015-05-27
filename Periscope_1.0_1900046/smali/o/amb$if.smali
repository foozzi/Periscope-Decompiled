.class public final enum Lo/amb$if;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/amb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/amb$if;>;"
    }
.end annotation


# static fields
.field public static final enum bML:Lo/amb$if;

.field public static final enum bMM:Lo/amb$if;

.field public static final enum bMN:Lo/amb$if;

.field public static final enum bMO:Lo/amb$if;

.field private static final synthetic bMP:[Lo/amb$if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lo/amb$if;

    const-string v1, "Follow"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/amb$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/amb$if;->bML:Lo/amb$if;

    .line 15
    new-instance v0, Lo/amb$if;

    const-string v1, "Following"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/amb$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/amb$if;->bMM:Lo/amb$if;

    .line 16
    new-instance v0, Lo/amb$if;

    const-string v1, "Blocked"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/amb$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/amb$if;->bMN:Lo/amb$if;

    .line 17
    new-instance v0, Lo/amb$if;

    const-string v1, "Me"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lo/amb$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/amb$if;->bMO:Lo/amb$if;

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Lo/amb$if;

    sget-object v1, Lo/amb$if;->bML:Lo/amb$if;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/amb$if;->bMM:Lo/amb$if;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/amb$if;->bMN:Lo/amb$if;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/amb$if;->bMO:Lo/amb$if;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lo/amb$if;->bMP:[Lo/amb$if;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/amb$if;
    .locals 1

    .line 13
    const-class v0, Lo/amb$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/amb$if;

    return-object v0
.end method

.method public static values()[Lo/amb$if;
    .locals 1

    .line 13
    sget-object v0, Lo/amb$if;->bMP:[Lo/amb$if;

    invoke-virtual {v0}, [Lo/amb$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/amb$if;

    return-object v0
.end method
