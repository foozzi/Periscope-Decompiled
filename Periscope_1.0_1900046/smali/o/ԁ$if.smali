.class final Lo/ԁ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ԁ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "if"
.end annotation


# instance fields
.field public final mimeType:Ljava/lang/String;

.field public final sb:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object p1, p0, Lo/ԁ$if;->mimeType:Ljava/lang/String;

    .line 383
    iput-boolean p2, p0, Lo/ԁ$if;->sb:Z

    .line 384
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 397
    if-ne p0, p1, :cond_0

    .line 398
    const/4 v0, 0x1

    return v0

    .line 400
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lo/ԁ$if;

    if-eq v0, v1, :cond_2

    .line 401
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 403
    :cond_2
    move-object v0, p1

    check-cast v0, Lo/ԁ$if;

    move-object v2, v0

    .line 404
    iget-object v0, p0, Lo/ԁ$if;->mimeType:Ljava/lang/String;

    iget-object v1, v2, Lo/ԁ$if;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lo/ԁ$if;->sb:Z

    iget-boolean v1, v2, Lo/ԁ$if;->sb:Z

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 388
    const/16 v2, 0x1f

    .line 389
    const/4 v3, 0x1

    .line 390
    iget-object v0, p0, Lo/ԁ$if;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ԁ$if;->mimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v3, v0, 0x1f

    .line 391
    mul-int/lit8 v0, v3, 0x1f

    iget-boolean v1, p0, Lo/ԁ$if;->sb:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v1, 0x4d5

    :goto_1
    add-int v3, v0, v1

    .line 392
    return v3
.end method
