.class Lo/ĵ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ĵ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˋ(Landroid/graphics/Bitmap;Lo/ი;)Lo/ڔ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/graphics/Bitmap;Lo/\u10d8;)Lo/\u0694<Landroid/graphics/Bitmap;>;"
        }
    .end annotation

    .line 145
    new-instance v0, Lo/ᖟ;

    invoke-direct {v0, p1, p2}, Lo/ᖟ;-><init>(Landroid/graphics/Bitmap;Lo/ი;)V

    return-object v0
.end method

.method public ˋ(Lo/ᵨ$if;)Lo/ᵨ;
    .locals 1

    .line 133
    new-instance v0, Lo/ᵨ;

    invoke-direct {v0, p1}, Lo/ᵨ;-><init>(Lo/ᵨ$if;)V

    return-object v0
.end method

.method public ҭ()Lo/ⅽ;
    .locals 1

    .line 137
    new-instance v0, Lo/ⅽ;

    invoke-direct {v0}, Lo/ⅽ;-><init>()V

    return-object v0
.end method

.method public Ү()Lo/ײַ;
    .locals 1

    .line 141
    new-instance v0, Lo/ײַ;

    invoke-direct {v0}, Lo/ײַ;-><init>()V

    return-object v0
.end method
