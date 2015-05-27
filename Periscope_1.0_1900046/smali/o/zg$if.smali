.class public abstract enum Lo/zg$if;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/zg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/zg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/zg$if;>;Lo/zg;"
    }
.end annotation


# static fields
.field public static final enum brK:Lo/zg$if;

.field public static final enum brL:Lo/zg$if;

.field private static final synthetic brM:[Lo/zg$if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lo/zh;

    const-string v1, "development"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/zh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/zg$if;->brK:Lo/zg$if;

    .line 43
    new-instance v0, Lo/zi;

    const-string v1, "production"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/zi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/zg$if;->brL:Lo/zg$if;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Lo/zg$if;

    sget-object v1, Lo/zg$if;->brK:Lo/zg$if;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/zg$if;->brL:Lo/zg$if;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lo/zg$if;->brM:[Lo/zg$if;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILo/zg$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lo/zg$if;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/zg$if;
    .locals 1

    .line 11
    const-class v0, Lo/zg$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/zg$if;

    return-object v0
.end method

.method public static values()[Lo/zg$if;
    .locals 1

    .line 11
    sget-object v0, Lo/zg$if;->brM:[Lo/zg$if;

    invoke-virtual {v0}, [Lo/zg$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/zg$if;

    return-object v0
.end method
