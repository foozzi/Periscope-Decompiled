.class public final enum Lo/afq$if;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/afq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/afq$if;>;"
    }
.end annotation


# static fields
.field public static final enum bCK:Lo/afq$if;

.field public static final enum bCL:Lo/afq$if;

.field public static final enum bCM:Lo/afq$if;

.field public static final enum bCN:Lo/afq$if;

.field private static final synthetic bCO:[Lo/afq$if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 298
    new-instance v0, Lo/afq$if;

    const-string v1, "Connecting"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/afq$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/afq$if;->bCK:Lo/afq$if;

    .line 299
    new-instance v0, Lo/afq$if;

    const-string v1, "Connected"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/afq$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/afq$if;->bCL:Lo/afq$if;

    .line 300
    new-instance v0, Lo/afq$if;

    const-string v1, "TooFull"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/afq$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/afq$if;->bCM:Lo/afq$if;

    .line 301
    new-instance v0, Lo/afq$if;

    const-string v1, "Limited"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lo/afq$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/afq$if;->bCN:Lo/afq$if;

    .line 297
    const/4 v0, 0x4

    new-array v0, v0, [Lo/afq$if;

    sget-object v1, Lo/afq$if;->bCK:Lo/afq$if;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/afq$if;->bCL:Lo/afq$if;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/afq$if;->bCM:Lo/afq$if;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/afq$if;->bCN:Lo/afq$if;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lo/afq$if;->bCO:[Lo/afq$if;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 297
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/afq$if;
    .locals 1

    .line 297
    const-class v0, Lo/afq$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/afq$if;

    return-object v0
.end method

.method public static values()[Lo/afq$if;
    .locals 1

    .line 297
    sget-object v0, Lo/afq$if;->bCO:[Lo/afq$if;

    invoke-virtual {v0}, [Lo/afq$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/afq$if;

    return-object v0
.end method
