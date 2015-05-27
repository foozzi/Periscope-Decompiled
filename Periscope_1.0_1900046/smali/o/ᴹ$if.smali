.class Lo/ᴹ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ṝ$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᴹ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private final duration:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lo/ᴹ$if;->duration:I

    .line 85
    return-void
.end method


# virtual methods
.method public ᴽ()Landroid/view/animation/Animation;
    .locals 3

    .line 89
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 90
    iget v0, p0, Lo/ᴹ$if;->duration:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 91
    return-object v2
.end method
