.class Lo/ﮇ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﮇ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﮇ$if$if;
    }
.end annotation


# instance fields
.field private final hJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/\u4e3f;>;"
        }
    .end annotation
.end field

.field private mU:Lo/ﮇ$if$if;

.field private mV:Landroid/graphics/Point;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ﮇ$if;->hJ:Ljava/util/List;

    .line 172
    iput-object p1, p0, Lo/ﮇ$if;->view:Landroid/view/View;

    .line 173
    return-void
.end method

.method static synthetic ˊ(Lo/ﮇ$if;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Lo/ﮇ$if;->ṿ()V

    return-void
.end method

.method private ˍ(IZ)I
    .locals 2

    .line 249
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 250
    invoke-direct {p0}, Lo/ﮇ$if;->ἴ()Landroid/graphics/Point;

    move-result-object v1

    .line 251
    if-eqz p2, :cond_0

    iget v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    iget v0, v1, Landroid/graphics/Point;->x:I

    :goto_0
    return v0

    .line 253
    :cond_1
    return p1
.end method

.method private ᕐ(I)Z
    .locals 1

    .line 275
    if-gtz p1, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ᴸ(II)V
    .locals 3

    .line 176
    iget-object v0, p0, Lo/ﮇ$if;->hJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/丿;

    move-object v2, v0

    .line 177
    invoke-interface {v2, p1, p2}, Lo/丿;->ᴶ(II)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lo/ﮇ$if;->hJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    return-void
.end method

.method private ṿ()V
    .locals 4

    .line 183
    iget-object v0, p0, Lo/ﮇ$if;->hJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    return-void

    .line 187
    :cond_0
    invoke-direct {p0}, Lo/ﮇ$if;->ἳ()I

    move-result v1

    .line 188
    invoke-direct {p0}, Lo/ﮇ$if;->ἲ()I

    move-result v2

    .line 189
    invoke-direct {p0, v1}, Lo/ﮇ$if;->ᕐ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lo/ﮇ$if;->ᕐ(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    :cond_1
    return-void

    .line 193
    :cond_2
    invoke-direct {p0, v1, v2}, Lo/ﮇ$if;->ᴸ(II)V

    .line 200
    iget-object v0, p0, Lo/ﮇ$if;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 201
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lo/ﮇ$if;->mU:Lo/ﮇ$if$if;

    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 204
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ﮇ$if;->mU:Lo/ﮇ$if$if;

    .line 205
    return-void
.end method

.method private ἲ()I
    .locals 3

    .line 227
    iget-object v0, p0, Lo/ﮇ$if;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 228
    iget-object v0, p0, Lo/ﮇ$if;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lo/ﮇ$if;->ᕐ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lo/ﮇ$if;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 230
    :cond_0
    if-eqz v2, :cond_1

    .line 231
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lo/ﮇ$if;->ˍ(IZ)I

    move-result v0

    return v0

    .line 233
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private ἳ()I
    .locals 3

    .line 238
    iget-object v0, p0, Lo/ﮇ$if;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 239
    iget-object v0, p0, Lo/ﮇ$if;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lo/ﮇ$if;->ᕐ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lo/ﮇ$if;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    .line 241
    :cond_0
    if-eqz v2, :cond_1

    .line 242
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/ﮇ$if;->ˍ(IZ)I

    move-result v0

    return v0

    .line 244
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private ἴ()Landroid/graphics/Point;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .line 260
    iget-object v0, p0, Lo/ﮇ$if;->mV:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lo/ﮇ$if;->mV:Landroid/graphics/Point;

    return-object v0

    .line 263
    :cond_0
    iget-object v0, p0, Lo/ﮇ$if;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    move-object v3, v0

    .line 264
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_1

    .line 266
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lo/ﮇ$if;->mV:Landroid/graphics/Point;

    .line 267
    iget-object v0, p0, Lo/ﮇ$if;->mV:Landroid/graphics/Point;

    invoke-virtual {v4, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 269
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lo/ﮇ$if;->mV:Landroid/graphics/Point;

    .line 271
    :goto_0
    iget-object v0, p0, Lo/ﮇ$if;->mV:Landroid/graphics/Point;

    return-object v0
.end method


# virtual methods
.method public ˊ(Lo/丿;)V
    .locals 4

    .line 208
    invoke-direct {p0}, Lo/ﮇ$if;->ἳ()I

    move-result v1

    .line 209
    invoke-direct {p0}, Lo/ﮇ$if;->ἲ()I

    move-result v2

    .line 210
    invoke-direct {p0, v1}, Lo/ﮇ$if;->ᕐ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lo/ﮇ$if;->ᕐ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {p1, v1, v2}, Lo/丿;->ᴶ(II)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lo/ﮇ$if;->hJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lo/ﮇ$if;->hJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_1
    iget-object v0, p0, Lo/ﮇ$if;->mU:Lo/ﮇ$if$if;

    if-nez v0, :cond_2

    .line 219
    iget-object v0, p0, Lo/ﮇ$if;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 220
    new-instance v0, Lo/ﮇ$if$if;

    invoke-direct {v0, p0}, Lo/ﮇ$if$if;-><init>(Lo/ﮇ$if;)V

    iput-object v0, p0, Lo/ﮇ$if;->mU:Lo/ﮇ$if$if;

    .line 221
    iget-object v0, p0, Lo/ﮇ$if;->mU:Lo/ﮇ$if$if;

    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 224
    :cond_2
    :goto_0
    return-void
.end method
