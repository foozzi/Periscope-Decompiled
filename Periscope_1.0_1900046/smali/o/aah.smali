.class public final enum Lo/aah;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/aah;>;"
    }
.end annotation


# static fields
.field public static final enum bsL:Lo/aah;

.field public static final enum bsM:Lo/aah;

.field public static final enum bsN:Lo/aah;

.field public static final enum bsO:Lo/aah;

.field public static final enum bsP:Lo/aah;

.field public static final enum bsQ:Lo/aah;

.field public static final enum bsR:Lo/aah;

.field public static final enum bsS:Lo/aah;

.field public static final enum bsT:Lo/aah;

.field private static final synthetic bsU:[Lo/aah;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lo/aah;

    const-string v1, "Followers"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/aah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/aah;->bsL:Lo/aah;

    .line 5
    new-instance v0, Lo/aah;

    const-string v1, "Following"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/aah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/aah;->bsM:Lo/aah;

    .line 6
    new-instance v0, Lo/aah;

    const-string v1, "Blocked"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/aah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/aah;->bsN:Lo/aah;

    .line 7
    new-instance v0, Lo/aah;

    const-string v1, "SuggestedTwitter"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lo/aah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/aah;->bsO:Lo/aah;

    .line 8
    new-instance v0, Lo/aah;

    const-string v1, "SuggestedFeatured"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lo/aah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/aah;->bsP:Lo/aah;

    .line 9
    new-instance v0, Lo/aah;

    const-string v1, "SuggestedHearts"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lo/aah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/aah;->bsQ:Lo/aah;

    .line 10
    new-instance v0, Lo/aah;

    const-string v1, "SearchResults"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lo/aah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/aah;->bsR:Lo/aah;

    .line 11
    new-instance v0, Lo/aah;

    const-string v1, "Live"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lo/aah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/aah;->bsS:Lo/aah;

    .line 12
    new-instance v0, Lo/aah;

    const-string v1, "Replay"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lo/aah;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/aah;->bsT:Lo/aah;

    .line 3
    const/16 v0, 0x9

    new-array v0, v0, [Lo/aah;

    sget-object v1, Lo/aah;->bsL:Lo/aah;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/aah;->bsM:Lo/aah;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/aah;->bsN:Lo/aah;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/aah;->bsO:Lo/aah;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lo/aah;->bsP:Lo/aah;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lo/aah;->bsQ:Lo/aah;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lo/aah;->bsR:Lo/aah;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lo/aah;->bsS:Lo/aah;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lo/aah;->bsT:Lo/aah;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lo/aah;->bsU:[Lo/aah;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/aah;
    .locals 1

    .line 3
    const-class v0, Lo/aah;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/aah;

    return-object v0
.end method

.method public static values()[Lo/aah;
    .locals 1

    .line 3
    sget-object v0, Lo/aah;->bsU:[Lo/aah;

    invoke-virtual {v0}, [Lo/aah;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/aah;

    return-object v0
.end method
