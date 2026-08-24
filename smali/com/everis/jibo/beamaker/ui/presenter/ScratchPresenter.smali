.class public interface abstract Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;
.super Ljava/lang/Object;
.source "ScratchPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001d\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\u0003H&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000bH&J\u0012\u0010\u000f\u001a\u00020\u00032\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000bH&J\u0012\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000bH&J\u0008\u0010\u0012\u001a\u00020\u0005H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H&J\u0008\u0010\u0016\u001a\u00020\u0003H&J\u0008\u0010\u0017\u001a\u00020\u0003H&J\u0008\u0010\u0018\u001a\u00020\u0003H&J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0005H&J\u0008\u0010\u001b\u001a\u00020\u0003H&J\u0008\u0010\u001c\u001a\u00020\u0003H&J\u0008\u0010\u001d\u001a\u00020\u0003H&J\u0008\u0010\u001e\u001a\u00020\u0005H&J\u0008\u0010\u001f\u001a\u00020\u0003H&J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010!\u001a\u00020\"H&J\u0010\u0010#\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\"H&J\u0008\u0010$\u001a\u00020\u0005H&J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\'H&J\u0008\u0010(\u001a\u00020\u0003H&J\u0018\u0010)\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020*2\u0006\u0010+\u001a\u00020\u0005H&J\u0008\u0010,\u001a\u00020\u0003H&J\u0008\u0010-\u001a\u00020\u0003H&J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\'H&J\u0010\u0010/\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\'H&J\u0008\u00100\u001a\u00020\u0003H&J\u0008\u00101\u001a\u00020\u0003H&J\u0008\u00102\u001a\u00020\u0003H&J\u0008\u00103\u001a\u00020\u0003H&J\u0008\u00104\u001a\u00020\u0003H&J\u0008\u00105\u001a\u00020\u0003H&J\u0008\u00106\u001a\u00020\u0003H&J\u0008\u00107\u001a\u00020\u0003H&J\u001a\u00108\u001a\u00020\u00032\u0006\u00109\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000bH&J\u0010\u0010:\u001a\u00020\u00032\u0006\u0010;\u001a\u00020\u000bH&J\u0010\u0010<\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\'H&J\u0010\u0010=\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\'H&J\u0010\u0010>\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\'H&J\u0010\u0010?\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000bH&J\u0010\u0010@\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\'H&J\u0008\u0010A\u001a\u00020\u0003H&J\u0010\u0010B\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\'H&J\u0010\u0010C\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\'H&J\u0010\u0010D\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\'H&J\u0010\u0010E\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000bH&J\u0010\u0010F\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H&\u00a8\u0006G"
    }
    d2 = {
        "Lcom/everis/jibo/beamaker/ui/presenter/ScratchPresenter;",
        "",
        "changeProyect",
        "",
        "fromCoolIdea",
        "",
        "checkPermission",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "clearProject",
        "data",
        "",
        "coolIdeasLayout",
        "createInitialProject",
        "json",
        "createList",
        "name",
        "createVar",
        "currentProjectDeleted",
        "deleteProject",
        "project",
        "Lcom/everis/jibo/beamaker/data/ProjectEntity;",
        "disconnect",
        "disconnectAnalytics",
        "editProject",
        "enableCoolIdea",
        "boolean",
        "forceGreenFlag",
        "getConfig",
        "goPermissionSetting",
        "haveProjects",
        "init",
        "initCoolIdea",
        "coolIdea",
        "Lcom/everis/jibo/persistence/CoolIdea;",
        "initCoolIdeaAnalytics",
        "isCoolideaEnabled",
        "listen",
        "command",
        "Lcom/everis/jibo/beamaker/data/Command;",
        "listenCommandAnalytics",
        "loadProject",
        "Lcom/everis/jibo/persistence/Project;",
        "fromInit",
        "logout",
        "logoutAnalytics",
        "lookAt",
        "lookAt3D",
        "lookAt3DCommandAnalytics",
        "lookAtCommandAnalytics",
        "onResume",
        "registerGetEntity",
        "registerMotion",
        "registerScreenTouch",
        "registerTouchHead",
        "requestXMLProject",
        "saveProject",
        "projectName",
        "say",
        "text",
        "sayCommand",
        "sayCommandAnalytics",
        "sayTextAnalytics",
        "selectOperation",
        "setConfig",
        "stopAllBlocks",
        "stopAllSound",
        "takePhoto",
        "takePhotoCommandAnalytics",
        "update",
        "updateProject",
        "app_proRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# virtual methods
.method public abstract changeProyect(Z)V
.end method

.method public abstract checkPermission(Landroid/graphics/Bitmap;)V
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract clearProject(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract coolIdeasLayout()V
.end method

.method public abstract createInitialProject(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract createList(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract createVar(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract currentProjectDeleted()Z
.end method

.method public abstract deleteProject(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V
    .param p1    # Lcom/everis/jibo/beamaker/data/ProjectEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract disconnect()V
.end method

.method public abstract disconnectAnalytics()V
.end method

.method public abstract editProject()V
.end method

.method public abstract enableCoolIdea(Z)V
.end method

.method public abstract forceGreenFlag()V
.end method

.method public abstract getConfig()V
.end method

.method public abstract goPermissionSetting()V
.end method

.method public abstract haveProjects()Z
.end method

.method public abstract init()V
.end method

.method public abstract initCoolIdea(Lcom/everis/jibo/persistence/CoolIdea;)V
    .param p1    # Lcom/everis/jibo/persistence/CoolIdea;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract initCoolIdeaAnalytics(Lcom/everis/jibo/persistence/CoolIdea;)V
    .param p1    # Lcom/everis/jibo/persistence/CoolIdea;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isCoolideaEnabled()Z
.end method

.method public abstract listen(Lcom/everis/jibo/beamaker/data/Command;)V
    .param p1    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract listenCommandAnalytics()V
.end method

.method public abstract loadProject(Lcom/everis/jibo/persistence/Project;Z)V
    .param p1    # Lcom/everis/jibo/persistence/Project;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract logout()V
.end method

.method public abstract logoutAnalytics()V
.end method

.method public abstract lookAt(Lcom/everis/jibo/beamaker/data/Command;)V
    .param p1    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract lookAt3D(Lcom/everis/jibo/beamaker/data/Command;)V
    .param p1    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract lookAt3DCommandAnalytics()V
.end method

.method public abstract lookAtCommandAnalytics()V
.end method

.method public abstract onResume()V
.end method

.method public abstract registerGetEntity()V
.end method

.method public abstract registerMotion()V
.end method

.method public abstract registerScreenTouch()V
.end method

.method public abstract registerTouchHead()V
.end method

.method public abstract requestXMLProject()V
.end method

.method public abstract saveProject(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract say(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract sayCommand(Lcom/everis/jibo/beamaker/data/Command;)V
    .param p1    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract sayCommandAnalytics(Lcom/everis/jibo/beamaker/data/Command;)V
    .param p1    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract sayTextAnalytics(Lcom/everis/jibo/beamaker/data/Command;)V
    .param p1    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract selectOperation(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setConfig(Lcom/everis/jibo/beamaker/data/Command;)V
    .param p1    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract stopAllBlocks()V
.end method

.method public abstract stopAllSound(Lcom/everis/jibo/beamaker/data/Command;)V
    .param p1    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract takePhoto(Lcom/everis/jibo/beamaker/data/Command;)V
    .param p1    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract takePhotoCommandAnalytics(Lcom/everis/jibo/beamaker/data/Command;)V
    .param p1    # Lcom/everis/jibo/beamaker/data/Command;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract update(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract updateProject(Lcom/everis/jibo/beamaker/data/ProjectEntity;)V
    .param p1    # Lcom/everis/jibo/beamaker/data/ProjectEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
