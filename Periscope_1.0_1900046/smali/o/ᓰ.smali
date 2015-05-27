.class public Lo/ᓰ;
.super Lo/ເ;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:Ljava/lang/Object;DataType:Ljava/lang/Object;ResourceType:Ljava/lang/Object;>Lo/\u0ec0<TModelType;TDataType;TResourceType;TResourceType;>;"
    }
.end annotation


# instance fields
.field private final dT:Lo/ᕻ$ˋ;

.field private final eA:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<TResourceType;>;"
        }
    .end annotation
.end field

.field private final ey:Lo/ɽ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u027d<TModelType;TDataType;>;"
        }
    .end annotation
.end field

.field private final ez:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<TDataType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/ᓲ;Ljava/lang/Class;Lo/ɽ;Ljava/lang/Class;Ljava/lang/Class;Lo/ᐜ;Lo/ধ;Lo/ᕻ$ˋ;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Lo/\u14f2;Ljava/lang/Class<TModelType;>;Lo/\u027d<TModelType;TDataType;>;Ljava/lang/Class<TDataType;>;Ljava/lang/Class<TResourceType;>;Lo/\u141c;Lo/\u09a7;Lo/\u157b$\u02cb;)V"
        }
    .end annotation

    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-static {}, Lo/Ү;->ٳ()Lo/ғ;

    move-result-object v3

    invoke-static {p2, p4, p5, p6, v3}, Lo/ᓰ;->ˊ(Lo/ᓲ;Lo/ɽ;Ljava/lang/Class;Ljava/lang/Class;Lo/ғ;)Lo/ᔁ;

    move-result-object v3

    move-object v4, p6

    move-object v5, p2

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lo/ເ;-><init>(Landroid/content/Context;Ljava/lang/Class;Lo/ᔁ;Ljava/lang/Class;Lo/ᓲ;Lo/ᐜ;Lo/ধ;)V

    .line 62
    iput-object p4, p0, Lo/ᓰ;->ey:Lo/ɽ;

    .line 63
    iput-object p5, p0, Lo/ᓰ;->ez:Ljava/lang/Class;

    .line 64
    iput-object p6, p0, Lo/ᓰ;->eA:Ljava/lang/Class;

    .line 65
    move-object/from16 v0, p9

    iput-object v0, p0, Lo/ᓰ;->dT:Lo/ᕻ$ˋ;

    .line 66
    return-void
.end method

.method private static ˊ(Lo/ᓲ;Lo/ɽ;Ljava/lang/Class;Ljava/lang/Class;Lo/ғ;)Lo/ᔁ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:Ljava/lang/Object;T:Ljava/lang/Object;Z:Ljava/lang/Object;R:Ljava/lang/Object;>(Lo/\u14f2;Lo/\u027d<TA;TT;>;Ljava/lang/Class<TT;>;Ljava/lang/Class<TZ;>;Lo/\u0493<TZ;TR;>;)Lo/\u1501<TA;TT;TZ;TR;>;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p2, p3}, Lo/ᓲ;->ˋ(Ljava/lang/Class;Ljava/lang/Class;)Lo/ᓹ;

    move-result-object v1

    .line 42
    new-instance v0, Lo/ᔀ;

    invoke-direct {v0, p1, p4, v1}, Lo/ᔀ;-><init>(Lo/ɽ;Lo/ғ;Lo/ᓹ;)V

    return-object v0
.end method
