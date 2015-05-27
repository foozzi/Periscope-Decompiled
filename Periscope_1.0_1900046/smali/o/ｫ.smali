.class public Lo/ｫ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final description:Ljava/lang/String;

.field public final filename:Ljava/lang/String;

.field public final fw:[B

.field public final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lo/ｫ;->mimeType:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lo/ｫ;->filename:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lo/ｫ;->description:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lo/ｫ;->fw:[B

    .line 36
    return-void
.end method
