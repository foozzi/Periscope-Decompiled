.class public final enum Lo/anh$if;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/anh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/anh$if;>;"
    }
.end annotation


# static fields
.field public static final enum bNK:Lo/anh$if;

.field public static final enum bNL:Lo/anh$if;

.field public static final enum bNM:Lo/anh$if;

.field public static final enum bNN:Lo/anh$if;

.field public static final enum bNO:Lo/anh$if;

.field private static final synthetic bNP:[Lo/anh$if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lo/anh$if;

    const-string v1, "Hero"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/anh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/anh$if;->bNK:Lo/anh$if;

    .line 28
    new-instance v0, Lo/anh$if;

    const-string v1, "Broadcast"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/anh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/anh$if;->bNL:Lo/anh$if;

    .line 29
    new-instance v0, Lo/anh$if;

    const-string v1, "NothingLive"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/anh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/anh$if;->bNM:Lo/anh$if;

    .line 30
    new-instance v0, Lo/anh$if;

    const-string v1, "RecentFirst"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lo/anh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/anh$if;->bNN:Lo/anh$if;

    .line 31
    new-instance v0, Lo/anh$if;

    const-string v1, "Recent"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lo/anh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/anh$if;->bNO:Lo/anh$if;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Lo/anh$if;

    sget-object v1, Lo/anh$if;->bNK:Lo/anh$if;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/anh$if;->bNL:Lo/anh$if;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/anh$if;->bNM:Lo/anh$if;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/anh$if;->bNN:Lo/anh$if;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lo/anh$if;->bNO:Lo/anh$if;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lo/anh$if;->bNP:[Lo/anh$if;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/anh$if;
    .locals 1

    .line 26
    const-class v0, Lo/anh$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/anh$if;

    return-object v0
.end method

.method public static values()[Lo/anh$if;
    .locals 1

    .line 26
    sget-object v0, Lo/anh$if;->bNP:[Lo/anh$if;

    invoke-virtual {v0}, [Lo/anh$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/anh$if;

    return-object v0
.end method
