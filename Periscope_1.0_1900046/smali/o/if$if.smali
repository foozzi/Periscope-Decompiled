.class Lo/if$if;
.super Lo/ˊ$if;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private ˊ:Lo/ᕀ;


# direct methods
.method public constructor <init>(Lo/ᕀ;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Lo/ˊ$if;-><init>()V

    .line 223
    iput-object p1, p0, Lo/if$if;->ˊ:Lo/ᕀ;

    .line 224
    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 1

    .line 253
    iget-object v0, p0, Lo/if$if;->ˊ:Lo/ᕀ;

    invoke-virtual {v0, p1, p2, p3}, Lo/ᕀ;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 1

    .line 259
    iget-object v0, p0, Lo/if$if;->ˊ:Lo/ᕀ;

    invoke-virtual {v0, p1, p2}, Lo/ᕀ;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/String;>;Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;)V"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lo/if$if;->ˊ:Lo/ᕀ;

    invoke-virtual {v0, p1, p2}, Lo/ᕀ;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 248
    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Landroid/view/View;>;)V"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lo/if$if;->ˊ:Lo/ᕀ;

    invoke-virtual {v0, p1}, Lo/ᕀ;->onRejectSharedElements(Ljava/util/List;)V

    .line 243
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Landroid/view/View;>;Ljava/util/List<Landroid/view/View;>;)V"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lo/if$if;->ˊ:Lo/ᕀ;

    invoke-virtual {v0, p1, p2, p3}, Lo/ᕀ;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 238
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Landroid/view/View;>;Ljava/util/List<Landroid/view/View;>;)V"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lo/if$if;->ˊ:Lo/ᕀ;

    invoke-virtual {v0, p1, p2, p3}, Lo/ᕀ;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 231
    return-void
.end method
