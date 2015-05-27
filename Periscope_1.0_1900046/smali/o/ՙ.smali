.class final Lo/ՙ;
.super Landroid/transition/Transition$EpicenterCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private ᔊ:Landroid/graphics/Rect;

.field final synthetic ᔋ:Lo/ﹳ$if;


# direct methods
.method constructor <init>(Lo/ﹳ$if;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lo/ՙ;->ᔋ:Lo/ﹳ$if;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1

    .line 216
    iget-object v0, p0, Lo/ՙ;->ᔊ:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ՙ;->ᔋ:Lo/ﹳ$if;

    iget-object v0, v0, Lo/ﹳ$if;->ᵞ:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lo/ՙ;->ᔋ:Lo/ﹳ$if;

    iget-object v0, v0, Lo/ﹳ$if;->ᵞ:Landroid/view/View;

    invoke-static {v0}, Lo/ﹳ;->ˎ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lo/ՙ;->ᔊ:Landroid/graphics/Rect;

    .line 219
    :cond_0
    iget-object v0, p0, Lo/ՙ;->ᔊ:Landroid/graphics/Rect;

    return-object v0
.end method
