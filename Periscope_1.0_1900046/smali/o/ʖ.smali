.class public final enum Lo/ʖ;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/\u0296;>;"
    }
.end annotation


# static fields
.field public static final enum hl:Lo/ʖ;

.field public static final enum hm:Lo/ʖ;

.field public static final enum hn:Lo/ʖ;

.field public static final enum ho:Lo/ʖ;

.field private static final synthetic hr:[Lo/ʖ;


# instance fields
.field private final hp:Z

.field private final hq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lo/ʖ;

    const-string v1, "ALL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lo/ʖ;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lo/ʖ;->hl:Lo/ʖ;

    .line 10
    new-instance v0, Lo/ʖ;

    const-string v1, "NONE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lo/ʖ;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lo/ʖ;->hm:Lo/ʖ;

    .line 12
    new-instance v0, Lo/ʖ;

    const-string v1, "SOURCE"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lo/ʖ;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lo/ʖ;->hn:Lo/ʖ;

    .line 14
    new-instance v0, Lo/ʖ;

    const-string v1, "RESULT"

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lo/ʖ;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lo/ʖ;->ho:Lo/ʖ;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lo/ʖ;

    sget-object v1, Lo/ʖ;->hl:Lo/ʖ;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/ʖ;->hm:Lo/ʖ;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/ʖ;->hn:Lo/ʖ;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/ʖ;->ho:Lo/ʖ;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lo/ʖ;->hr:[Lo/ʖ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-boolean p3, p0, Lo/ʖ;->hp:Z

    .line 21
    iput-boolean p4, p0, Lo/ʖ;->hq:Z

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/ʖ;
    .locals 1

    .line 6
    const-class v0, Lo/ʖ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/ʖ;

    return-object v0
.end method

.method public static values()[Lo/ʖ;
    .locals 1

    .line 6
    sget-object v0, Lo/ʖ;->hr:[Lo/ʖ;

    invoke-virtual {v0}, [Lo/ʖ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/ʖ;

    return-object v0
.end method


# virtual methods
.method public ە()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lo/ʖ;->hp:Z

    return v0
.end method

.method public ܕ()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lo/ʖ;->hq:Z

    return v0
.end method
