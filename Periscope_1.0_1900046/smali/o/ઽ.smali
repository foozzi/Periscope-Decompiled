.class public Lo/ઽ;
.super Lo/ڏ;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:Ljava/lang/Object;>Lo/\u068f<TModelType;>;"
    }
.end annotation


# instance fields
.field private final dR:Lo/ɽ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u027d<TModelType;Ljava/io/InputStream;>;"
        }
    .end annotation
.end field

.field private final dS:Lo/ɽ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u027d<TModelType;Landroid/os/ParcelFileDescriptor;>;"
        }
    .end annotation
.end field

.field private final dT:Lo/ᕻ$ˋ;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lo/ɽ;Lo/ɽ;Landroid/content/Context;Lo/ᓲ;Lo/ᐜ;Lo/ধ;Lo/ᕻ$ˋ;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Class<TModelType;>;Lo/\u027d<TModelType;Ljava/io/InputStream;>;Lo/\u027d<TModelType;Landroid/os/ParcelFileDescriptor;>;Landroid/content/Context;Lo/\u14f2;Lo/\u141c;Lo/\u09a7;Lo/\u157b$\u02cb;)V"
        }
    .end annotation

    .line 57
    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    const-class v6, Lo/ĸ;

    const-class v7, Lo/לּ;

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lo/ઽ;->ˊ(Lo/ᓲ;Lo/ɽ;Lo/ɽ;Ljava/lang/Class;Ljava/lang/Class;Lo/ғ;)Lo/ᔀ;

    move-result-object v3

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lo/ڏ;-><init>(Landroid/content/Context;Ljava/lang/Class;Lo/ᔁ;Lo/ᓲ;Lo/ᐜ;Lo/ধ;)V

    .line 61
    iput-object p2, p0, Lo/ઽ;->dR:Lo/ɽ;

    .line 62
    iput-object p3, p0, Lo/ઽ;->dS:Lo/ɽ;

    .line 63
    move-object/from16 v0, p8

    iput-object v0, p0, Lo/ઽ;->dT:Lo/ᕻ$ˋ;

    .line 64
    return-void
.end method

.method private static ˊ(Lo/ᓲ;Lo/ɽ;Lo/ɽ;Ljava/lang/Class;Ljava/lang/Class;Lo/ғ;)Lo/ᔀ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:Ljava/lang/Object;Z:Ljava/lang/Object;R:Ljava/lang/Object;>(Lo/\u14f2;Lo/\u027d<TA;Ljava/io/InputStream;>;Lo/\u027d<TA;Landroid/os/ParcelFileDescriptor;>;Ljava/lang/Class<TZ;>;Ljava/lang/Class<TR;>;Lo/\u0493<TZ;TR;>;)Lo/\u1500<TA;Lo/\uff8c;TZ;TR;>;"
        }
    .end annotation

    .line 40
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    if-nez p5, :cond_1

    .line 45
    invoke-virtual {p0, p3, p4}, Lo/ᓲ;->ˊ(Ljava/lang/Class;Ljava/lang/Class;)Lo/ғ;

    move-result-object p5

    .line 47
    :cond_1
    const-class v0, Lo/ﾌ;

    invoke-virtual {p0, v0, p3}, Lo/ᓲ;->ˋ(Ljava/lang/Class;Ljava/lang/Class;)Lo/ᓹ;

    move-result-object v1

    .line 49
    new-instance v2, Lo/ｲ;

    invoke-direct {v2, p1, p2}, Lo/ｲ;-><init>(Lo/ɽ;Lo/ɽ;)V

    .line 51
    new-instance v0, Lo/ᔀ;

    invoke-direct {v0, v2, p5, v1}, Lo/ᔀ;-><init>(Lo/ɽ;Lo/ғ;Lo/ᓹ;)V

    return-object v0
.end method
