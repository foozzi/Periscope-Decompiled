.class public Lo/ᴹ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ḹ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᴹ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Landroid/graphics/drawable/Drawable;>Ljava/lang/Object;Lo/\u1e39<TT;>;"
    }
.end annotation


# instance fields
.field private final duration:I

.field private final mD:Lo/ṿ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u1e7f<TT;>;"
        }
    .end annotation
.end field

.field private mE:Lo/ᴽ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u1d3d<TT;>;"
        }
    .end annotation
.end field

.field private mF:Lo/ᴽ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u1d3d<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lo/ᴹ;-><init>(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 34
    new-instance v0, Lo/ṿ;

    new-instance v1, Lo/ᴹ$if;

    invoke-direct {v1, p1}, Lo/ᴹ$if;-><init>(I)V

    invoke-direct {v0, v1}, Lo/ṿ;-><init>(Lo/ṝ$if;)V

    invoke-direct {p0, v0, p1}, Lo/ᴹ;-><init>(Lo/ṿ;I)V

    .line 35
    return-void
.end method

.method constructor <init>(Lo/ṿ;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u1e7f<TT;>;I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lo/ᴹ;->mD:Lo/ṿ;

    .line 47
    iput p2, p0, Lo/ᴹ;->duration:I

    .line 48
    return-void
.end method

.method private ᴋ()Lo/ḟ;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u1e1f<TT;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lo/ᴹ;->mE:Lo/ᴽ;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lo/ᴹ;->mD:Lo/ṿ;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/ṿ;->ᐝ(ZZ)Lo/ḟ;

    move-result-object v3

    .line 65
    new-instance v0, Lo/ᴽ;

    iget v1, p0, Lo/ᴹ;->duration:I

    invoke-direct {v0, v3, v1}, Lo/ᴽ;-><init>(Lo/ḟ;I)V

    iput-object v0, p0, Lo/ᴹ;->mE:Lo/ᴽ;

    .line 67
    :cond_0
    iget-object v0, p0, Lo/ᴹ;->mE:Lo/ᴽ;

    return-object v0
.end method

.method private ᴹ()Lo/ḟ;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u1e1f<TT;>;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lo/ᴹ;->mF:Lo/ᴽ;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lo/ᴹ;->mD:Lo/ṿ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/ṿ;->ᐝ(ZZ)Lo/ḟ;

    move-result-object v3

    .line 74
    new-instance v0, Lo/ᴽ;

    iget v1, p0, Lo/ᴹ;->duration:I

    invoke-direct {v0, v3, v1}, Lo/ᴽ;-><init>(Lo/ḟ;I)V

    iput-object v0, p0, Lo/ᴹ;->mF:Lo/ᴽ;

    .line 76
    :cond_0
    iget-object v0, p0, Lo/ᴹ;->mF:Lo/ᴽ;

    return-object v0
.end method


# virtual methods
.method public ᐝ(ZZ)Lo/ḟ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)Lo/\u1e1f<TT;>;"
        }
    .end annotation

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-static {}, Lo/ḽ;->ḹ()Lo/ḟ;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    if-eqz p2, :cond_1

    .line 55
    invoke-direct {p0}, Lo/ᴹ;->ᴋ()Lo/ḟ;

    move-result-object v0

    return-object v0

    .line 57
    :cond_1
    invoke-direct {p0}, Lo/ᴹ;->ᴹ()Lo/ḟ;

    move-result-object v0

    return-object v0
.end method
